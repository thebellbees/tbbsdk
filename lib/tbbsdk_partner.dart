library tbbsdk;

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'package:tbbsdk/models/TBBCity.dart';
import 'package:tbbsdk/models/TBBCountry.dart';
import 'package:tbbsdk/models/TBBPartnerLocalState.dart';
import 'package:tbbsdk/models/TBBPartnerToken.dart';
import 'package:tbbsdk/models/TBBPartnerUser.dart';
import 'package:tbbsdk/models/TBBSubscriptionPlan.dart';
import 'package:tbbsdk/tbbsdk.dart';
import 'package:tbbsdk/utilities/local_database.dart';

// exports

export './models/TBBPartnerToken.dart' show TBBPartnerToken;
export './models/TBBPartnerLocalState.dart' show TBBPartnerLocalState;
export './models/TBBPartnerUser.dart' show TBBPartnerUser;

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

/// A Calculator.
class TBBSdkPartner {
  /// Parameter, [appServer] is the base url of your site. For example, http://example.com or https://example.com.
  String appServer;

  /// Parameter, [appPath] is the base url of your site. For example, http://example.com or https://example.com.
  String appPath;

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

  TBBPartnerLocalState _localState;

  TBBPartnerLocalState get localState => _localState;

  // Constructor
  TBBSdkPartner({
    @required String appServer,
    @required String authServer,
    @required String appPath,
    @required String consumerKey,
    @required String consumerSecret,
    bool isDebug = false,
  }) {
    this.appServer = appServer;
    this.authServer = authServer;
    this.appPath = appPath;
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

  Future<TBBPartnerUser> getUserInfo() async {
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
      this.appServer + "/$appPath" + API_PATH_PARTNER_INFO,
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBPartnerUser.fromJson(response.data);
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

  Future<TBBPartnerLocalState> loadLocalState() async {
    _printToLog("loading Local State");

    String accessId = await _localDatabaseService.getSecureAccess("access_id");
    String refreshId =
        await _localDatabaseService.getSecureAccess("refresh_id");
    TBBPartnerUser user;

    try {
      user = await this.getUserInfo();
    } catch (error) {
      if (error is TBBError) {
        //  Do something TBB Error
      } else {
        throw error;
      }
    }

    _localState = new TBBPartnerLocalState(
      user: user,
      accessId: accessId,
      refreshId: refreshId,
    );

    return this.localState;
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

  Future<TBBUser> loadDefault() async {
    _printToLog("preparing user update");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // request
    final _response = await http.get(
      this.appServer + "/$appPath" + API_PATH_PARTNER_INFO,
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

  Future<TBBStore> createStore({TBBStore store}) async {
    _printToLog("preparing user store");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data
    _printToLog('body before');
    final body = {
      "store_type": store.storeType.toString(),
      "subCategory": store.subCategory.toString(),
      "company": store.company.toString(),
      "phone": store.phone.toString(),
      "email": store.email.toString(),
      "aadhar": store.aadhar.toString(),
      "gst": store.gst.toString(),
      "udyog_aadhar": store.udyogAadhar.toString(),
      "proprietor_name": store.proprietorName.toString(),
      "address": store.address.toString(),
      "city": store.city.toString(),
      "state": store.state.toString(),
      "country": store.country.toString(),
      "pincode": store.pincode.toString(),
      "certificate": store.certificate.toString(),
      "optional_documents": store.optionalDocuments.toJson()
    };
    _printToLog('body works');
    // request
    final _response = await http.post(
        this.appServer + "/$appPath" + API_PATH_PARTNER_CREATE_STORE,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBStore.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBPartnerToken> setPartnerToken({TBBStore store}) async {
    _printToLog("preparing user update");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data
    final body = {
      'store_id': store.storeId.toString(),
    };

    // request
    final _response = await http.post(
        this.appServer + "/$appPath" + API_PATH_PARTNER_TOKEN,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBPartnerToken.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<List<TBBSubscriptionPlan>> availableSubscriptionPlans(
      {TBBStore store}) async {
    _printToLog("preparing user update");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data

    // request
    final _response = await http.post(
      this.appServer + "/$appPath" + API_PATH_PARTNER_SUBSCRIPTION_PLANS,
      headers: headers,
    );

    _printHttpLog(
      response: _response,
    );

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBSubscriptionPlan.listFromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBServiceTaxonomy> getStoreCategory({String taxonomySlug}) async {
    _printToLog("preparing store category");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data
    final body = {
      'taxonomy_slug': taxonomySlug.toString(),
    };

    // request
    final _response = await http.post(
        this.appServer + "/system" + API_PATH_STORE_CATEGORIES,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBServiceTaxonomy.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<TBBServiceTaxonomy> getCities({String taxonomySlug}) async {
    _printToLog("preparing store category");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // body data
    final body = {
      'taxonomy_slug': taxonomySlug.toString(),
    };

    // request
    final _response = await http.post(
        this.appServer + "/system" + API_PATH_STORE_CATEGORIES,
        headers: headers,
        body: body);

    _printHttpLog(response: _response, body: body);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBServiceTaxonomy.fromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<List<TBBCountry>> getCountry() async {
    _printToLog("preparing country");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // request
    final _response = await http.post(
        this.appServer + "/system" + API_PATH_GET_COUNTRY,
        headers: headers);

    _printHttpLog(response: _response);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBCountry.listFromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }

  Future<List<TBBCity>> getSelectedLocation() async {
    _printToLog("preparing country");

    // headers data
    final headers = {
      'authorization':
          'Bearer ' + await _localDatabaseService.getSecureAccess('access_id'),
    };

    // request
    final _response = await http.post(
        this.appServer + "/system" + API_PATH_GET_SERVICE_LOCATION,
        headers: headers);

    _printHttpLog(response: _response);

    //  response
    if (_response.statusCode >= 200 && _response.statusCode < 300) {
      TBBResponse response = TBBResponse.fromJson(json.decode(_response.body));
      return TBBCity.listFromJson(response.data);
    } else {
      throw new TBBError.fromJson(json.decode(_response.body));
    }
  }
}
