import 'package:tbbsdk/models/services/TBBServiceTaxonomy.dart';
import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/utilities/local_database.dart';

class TBBLocalState {
  String accessId;
  String refreshId;
  TBBUser user;
  TBBServiceTaxonomy serviceTaxonomy;

  bool get loggedIn => user != null && user.isEmpty == false;

  Future<String> get otpFrom async => await _getProp("otp_from");

  TBBLocalState(
      {this.accessId, this.refreshId, this.user, this.serviceTaxonomy});

  TBBLocalState.fromJson(Map<String, dynamic> json) {
    accessId = json['access_id'];
    refreshId = json['refresh_id'];
    user = json['user'] != null ? TBBUser.fromJson(json['user']) : null;
    serviceTaxonomy = json['service_taxonomy'] != null
        ? TBBServiceTaxonomy.fromJson(json['service_taxonomy'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_id'] = this.accessId;
    data['loggedIn'] = this.loggedIn;
    data['refresh_id'] = this.refreshId;
    data['user'] = this.user != null ? this.user.toJson() : null;
    data['service_taxonomy'] =
        this.serviceTaxonomy != null ? this.serviceTaxonomy.toJson() : null;

    return data;
  }

  @override
  toString() => this.toJson().toString();

  _getProp(String key) async {
    TBBLocalDatabaseService localDatabaseService =
        new TBBLocalDatabaseService();
    return await localDatabaseService.getLocalStateProp(key);
  }
}
