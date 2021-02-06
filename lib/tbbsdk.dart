library tbbsdk;

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:tbbsdk/constants/constants.dart';
import 'package:tbbsdk/models/access_token.dart';
import 'package:tbbsdk/models/helper_class.dart';
import 'package:tbbsdk/models/services/TBBServiceItem.dart';
import 'package:tbbsdk/models/services/TBBServiceTaxonomy.dart';
import 'package:tbbsdk/models/system_state.dart';
import 'package:tbbsdk/models/tbb_response.dart';
import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/tbb_error.dart';
import 'package:tbbsdk/utilities/local_database.dart';

// exports

export './constants/constants.dart';
export './models/access_token.dart' show TBBAccessToken;
export './models/helper_class.dart';
export './models/system_state.dart' show TBBLocalState;
export './models/tbb_response.dart' show TBBResponse;
export './models/user.dart' show TBBUser;
export './models/services/TBBServiceTaxonomy.dart' show TBBServiceTaxonomy;
export './models/services/TBBServiceItem.dart' show TBBServiceItem;
export './models/services/TBBServiceTerm.dart' show TBBServiceTerm;
export './models/customer.dart' show TBBCustomer;
export './models/store.dart' show TBBStore;

/// A Calculator.
class TBBSdk {
  /// Parameter, [appServer] is the base url of your site. For example, http://example.com or https://example.com.
  String appServer;

  /// Parameter, [authServer] is the base url of your site. For example, http://example.com or https://example.com.
  String authServer;

  /// Parameter [consumerKey] is the consumer key provided.
  String consumerKey;

  /// Parameter [consumerSecret] is the consumer secret provided.
  String consumerSecret;

  /// Returns if the website is https or not based on the [baseUrl] parameter.
  bool isHttps;

  /// Parameter(Optional) [isDebug], tells the library if it should _printToLog debug logs.
  /// Useful if you are debugging or in development.
  bool isDebug;

  TBBLocalDatabaseService _localDatabaseService = new TBBLocalDatabaseService();

  TBBLocalState _localState;

  TBBLocalState get localState => _localState;

  // Constructor
  TBBSdk({
    @required String appServer,
    @required String authServer,
    @required String consumerKey,
    @required String consumerSecret,
    bool isDebug = false,
  }) {
    this.appServer = appServer;
    this.authServer = authServer;
    this.consumerKey = consumerKey;
    this.consumerSecret = consumerSecret;
    this.isDebug = isDebug;

    if (this.appServer.startsWith("https") &&
        this.authServer.startsWith("https")) {
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

  Future<TBBResponse> logout(String phone) async {
    _printToLog("user getting logged out");
    return await _localDatabaseService.flashSecureLocalState();
  }

  Future<TBBResponse> generateOtp(String phone,
      {bool retryVoice = false, bool retryText = false}) async {
    _printToLog("preparing Auth With Phone");

    // body data
    var body = {
      'phone': phone.toString(),
    };

    // request
    final _response = await http.post(
      this.authServer + API_PATH_LOGIN_WITH_PHONE,
      body: body,
    );

    _printHttpLog(response: _response, body: body);

    //  Response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      try {
        TBBResponse response =
            TBBResponse.fromJson(json.decode(_response.body));

        return response;
      } catch (e) {
        print(e);
        throw e;
      }
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
    final body = {
      'phone': phone.toString(),
      "otp": otp.toString(),
      "new_user": newUser.toString(),
      "latitude": coordinates.latitude.toString(),
      "longitude": coordinates.longitude.toString(),
    };

    // request
    final _response = await http.post(
      this.authServer + API_PATH_OTP_VERIFY,
      body: body,
    );

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));

      // Setting Waiting for otp
      if (response.data != null && response.data["phone"] != null) {
        _localDatabaseService.putLocalState('otp_from', '0');
      }

      var token = TBBAccessToken.fromJson(response.data);

      if (token != null) {
        await _localDatabaseService.updateSecureAccess(
            {"access_id": token.accessId, "refresh_id": token.refreshId});
      }

      return token;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBUser> verifyAndUpdatePhone(
      String newPhone, String otp, String newPhoneOtp) async {
    _printToLog("preparing Verify And Update Phone");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // body data
    final body = {
      'new_phone': newPhone.toString(),
      'otp': otp.toString(),
      'new_phone_otp': newPhoneOtp.toString(),
    };

    // request
    final _response = await http.post(this.authServer + API_PATH_PHONE_UPDATE,
        headers: headers, body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBUser> getUserInfo() async {
    _printToLog("preparing Get User Info");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.get(
      this.authServer + API_PATH_GET_INFO,
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future refreshAccessToken() async {
    _printToLog("preparing Refreshing Access Token");

    // headers data
    final headers = {
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.post(
      this.authServer + API_PATH_REFRESH_TOKEN,
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

    _localState =
        new TBBLocalState(accessId: accessId, refreshId: refreshId, user: user);

    return this.localState;
  }

  Future<TBBUser> socialConnect(
      {String socialPlatform, String username}) async {
    _printToLog("preparing Social Connect");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'username': await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // body data
    final body = {
      'platform': socialPlatform.toString(),
      'username': username.toString(),
    };

    // request
    final _response = await http.post(
        this.authServer + API_PATH_CONNECT_WITH_SOCIAL,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBUser> userUpdate({TBBUserUpdate userData}) async {
    _printToLog("preparing user update");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data
    final body = {
      'first_name': userData.firstName.toString(),
      'last_name': userData.lastName.toString(),
      'email': userData.email.toString(),
    };

    // request
    final _response = await http.post(this.authServer + API_PATH_INFO_UPDATE,
        headers: headers, body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBUser.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBAccessToken> authWithSocial(
      {String platform, String username}) async {
    _printToLog("preparing can auth with");

    final location = new Location();
    final coordinates = await location.getLocation();

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'username': await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // body data
    final body = {
      "platform": platform.toString(),
      "username": username.toString(),
      "latitude": coordinates.latitude.toString(),
      "longitude": coordinates.longitude.toString(),
    };

    // request
    final _response = await http.post(
        this.authServer + API_PATH_AUTH_WITH_SOCIAL,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));

      var token = TBBAccessToken.fromJson(response.data);

      if (token != null) {
        await _localDatabaseService.updateSecureAccess(
            {"access_id": token.accessId, "refresh_id": token.refreshId});
      }

      return token;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  // SERVICES FUNCTIONS

  Future<TBBServiceTaxonomy> getServiceTypes(String type,
      {int limit, int offset}) async {
    _printToLog("preparing get service types");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // request
    final _response = await http.get(
      this.appServer +
          API_PATH_SERVICES_TYPES +
          "/$type?limit=$limit&offset=$offset",
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));

      TBBServiceTaxonomy item = TBBServiceTaxonomy.fromJson(response.data);

      return item;
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<List<TBBServiceItem>> availableService(
      {String category, int kilometer, int limit, int offset}) async {
    _printToLog("preparing getting list of available service");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
      'X-Refresh-Token':
          await _localDatabaseService.getSecureAccess('refresh_id'),
    };

    // body data
    final body = {
      'term_slug': category.toString(),
      'km': kilometer.toString(),
    };

    // request
    final _response = await http.post(
        this.appServer + API_PATH_SERVICES_ALL + "?limit=$limit&offset=$offset",
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      print(response.data);
      return TBBServiceItem.listFromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future loadDefaults() async {
    _printToLog("loading Defaults");

    if (localState != null && localState.loggedIn) {
      _localState.serviceTaxonomy = await getServiceTypes("category");
    }
  }
}
