import 'package:tbbsdk/models/services/service_taxonomy.dart';
import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/utilities/local_database.dart';

class TBBLocalState {
  String accessId;
  String refreshId;
  TBBUser user;
  Map<String, TBBServiceTaxonomy> serviceTaxonomies;

  bool get loggedIn => user != null && user.isEmpty == false;

  Future<String> get otpFrom async => await _getProp("otp_from");

  TBBLocalState(
      {this.accessId, this.refreshId, this.user, this.serviceTaxonomies});

  TBBLocalState.fromJson(Map<String, dynamic> json) {
    accessId = json['access_id'];
    refreshId = json['refresh_id'];
    user = json['user'] != null ? TBBUser.fromJson(json['user']) : null;

    if (json["service_taxonomies"] != null) {
      var _data = json["service_taxonomies"];
      serviceTaxonomies["category"] = _data["category"] != null
          ? TBBServiceTaxonomy.fromJson(_data["category"])
          : null;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_id'] = this.accessId;
    data['loggedIn'] = this.loggedIn;
    data['refresh_id'] = this.refreshId;
    data['user'] = this.user != null ? this.user.toJson() : null;

    if (this.serviceTaxonomies != null) {
      var _data = this.serviceTaxonomies;
      data["service_taxonomies"]["category"] = _data["category"] != null
          ? (data["category"] as TBBServiceTaxonomy).toJson()
          : null;
    }

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
