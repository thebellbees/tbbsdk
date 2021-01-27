library tbbsdk;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';
import 'package:location/location.dart';
import 'package:tbbsdk/constants/constants.dart';
import 'package:tbbsdk/models/access_token.dart';
import 'package:tbbsdk/models/system_state.dart';
import 'package:tbbsdk/models/tbb_response.dart';
import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/tbb_error.dart';
import 'package:tbbsdk/utilities/local_database.dart';

// exports

export './constants/constants.dart';
export './models/access_token.dart' show TBBAccessToken;
export './models/system_state.dart' show TBBLocalState;
export './models/tbb_response.dart' show TBBResponse;
export './models/user.dart' show TBBUser;

/// A Calculator.
class TBBSdk {
  /// Parameter, [baseUrl] is the base url of your site. For example, http://example.com or https://example.com.
  String baseUrl;

  /// Parameter [consumerKey] is the consumer key provided by WooCommerce, e.g. `ck_12abc34n56j`.
  String consumerKey;

  /// Parameter [consumerSecret] is the consumer secret provided by WooCommerce, e.g. `cs_1uab8h3s3op`.
  String consumerSecret;

  /// Parameter(Optional) [apiPath], tells the SDK if there is a different path to your api installation.
  String apiPath;

  /// Returns if the website is https or not based on the [baseUrl] parameter.
  bool isHttps;

  /// Parameter(Optional) [isDebug], tells the library if it should _printToLog debug logs.
  /// Useful if you are debuging or in development.
  bool isDebug;

  TBBLocalDatabaseService _localDatabaseService = new TBBLocalDatabaseService();

  TBBLocalState _localState;
  TBBLocalState get localState => _localState;

  // Constructor
  TBBSdk({
    @required String baseUrl,
    @required String consumerKey,
    @required String consumerSecret,
    String apiPath = DEFAULT_API_PATH,
    bool isDebug = false,
  }) {
    this.baseUrl = baseUrl;
    this.consumerKey = consumerKey;
    this.consumerSecret = consumerSecret;
    this.apiPath = apiPath;
    this.isDebug = isDebug;

    if (this.baseUrl.startsWith("https")) {
      this.isHttps = true;
    } else {
      this.isHttps = false;
    }
  }

  // Debug Function
  void _printToLog(String message) {
    if (isDebug) {
      print("TBB DEBUG LOG : " + message);
    }
  }

  // Debug API LOG
  void _printHttpLog({http.Response response, body}) {
    if (isDebug) {
      _printToLog(
          "${response.request.method.toUpperCase()} ${response.request.url.toString()}");
      _printToLog(" Header : ${response.request.headers.toString()}");
      _printToLog(" Body : ${body.toString()}");
      _printToLog(" Response : ${response.body}");
    }
  }

  // Auth Token
  String _authToken;
  String get authToken => _authToken;
  set authToken(String authToken) {
    _authToken = authToken;
  }

  Future<TBBResponse> logout(String phone) async {
    _printToLog("user getting logged out");
    return await _localDatabaseService.flashSecureLocalState();
  }

  Future<TBBResponse> registerWithPhone(String phone) async {
    _printToLog("preparing Register With Phone");

    // body data
    final body = {
      'phone': phone,
    };

    // request
    final _response = await http.post(
      this.baseUrl + API_PATH_REGISTER_WITH_PHONE,
      body: body,
    );

    _printHttpLog(response: _response, body: body);

    //  Response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      try {
        TBBResponse response =
            TBBResponse.fromJson(json.decode(_response.body));

        // Setting Waiting for otp
        _localDatabaseService.putLocalState(
            'otp_from', response.data.phone.toString());
        if (response.data != null && response.data.phone != null) {}

        return response;
      } catch (e) {
        print("Catch Exception : ${e.toString()}");
      }
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBResponse> authWithOtp(String phone) async {
    _printToLog("preparing Auth With OTP");

    // body data
    final body = {
      'phone': phone,
    };

    // request
    final _response = await http.post(
      this.baseUrl + API_PATH_LOGIN_WITH_PHONE,
      body: body,
    );

    _printHttpLog(response: _response, body: body);

    //  Response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));

      // Setting Waiting for otp
      if (response.data != null && response.data.phone != null) {
        _localDatabaseService.putLocalState('otp_from', response.data.phone);
      }

      return response;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBAccessToken> verifyAuthOtp(
      String phone, String otp, bool newUser) async {
    _printToLog("preparing Verify Auth OTP");

    final location = new Location();
    final coordinates = await location.getLocation();

    // body data
    final Map<String, dynamic> body = {
      'phone': phone.toString(),
      "otp": otp.toString(),
      "coordinates": {
        "latitude": coordinates.latitude.toString(),
        "longitude": coordinates.longitude.toString()
      },
      "newUser": newUser.toString()
    };

    _printToLog(body.toString());

    // request
    final _response = await http.post(
      this.baseUrl + API_PATH_OTP_VERIFY,
      body: body,
    );

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBAccessToken.fromJson(json.decode(response.data));
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBUser> getUserInfo() async {
    _printToLog("preparing Get User Info");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.get(
      this.baseUrl + API_PATH_GET_INFO,
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(json.decode(response.data));
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future refreshAccessToken() async {
    _printToLog("preparing Refreshing Access Token");

    // body data
    final headers = {
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.post(
      this.baseUrl + API_PATH_REFRESH_TOKEN,
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return response;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBLocalState> loadLocalState() async {
    _printToLog("loading Local State");

    String accessId = await _localDatabaseService.getSecureAccess("access_id");
    String refreshId =
        await _localDatabaseService.getSecureAccess("refresh_id");
    TBBUser user;

    try {
      user = await this.getUserInfo();
    } catch (error) {
      if (error is TBBError) {
        //  Do something TBB Error
      } else {
        throw error;
      }
    }

    _localState = new TBBLocalState(
        access_id: accessId, refresh_id: refreshId, user: user);

    return this.localState;
  }

  Future<TBBUser> socialConnect(
      {String socialPlatform, String username}) async {
    _printToLog("preparing Social Connect");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'username': await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    final body = {
      'platform': socialPlatform.toString(),
      'username': username.toString(),
    };

    // request
    final _response = await http.post(
        this.baseUrl + API_PATH_CONNECT_WITH_SOCIAL,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(json.decode(response.data));
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBUser> userUpdate({TBBUser user}) async {
    _printToLog("preparing user update");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'username': await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    final body = user.toJson();

    // request
    final _response = await http.post(
        this.baseUrl + API_PATH_CONNECT_WITH_SOCIAL,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(json.decode(response.data));
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future canAuthWith({String socialPlatform, String username}) async {
    _printToLog("preparing can auth with");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'username': await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    final body = {"username": username};

    // request
    final _response = await http.post(
        this.baseUrl + API_PATH_CAN_AUTH_WITH + "/$socialPlatform",
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return response.data;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  // SERVICES FUNCTIONS

  Future getServiceTypes({int limit, int offset}) async {
    _printToLog("preparing get service types");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.get(
      this.baseUrl + API_PATH_SERVICES_TYPES + "?limit=$limit&offset=$offset",
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return response.data;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future availableService({int kilometer, int limit, int offset}) async {
    _printToLog("preparing getting list of available service");

    // body data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    final body = {
      'km': kilometer.toString(),
    };

    // request
    final _response = await http.post(
        this.baseUrl + API_PATH_SERVICES_ALL + "?limit=$limit&offset=$offset",
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return response.data;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }
}
