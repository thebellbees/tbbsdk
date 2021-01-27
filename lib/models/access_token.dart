import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/tbbsdk.dart';

class TBBAccessToken {
  String access_id;
  String expires;
  String authorize_type;
  String refresh_id;
  String user_id;
  TBBUser user;

  TBBAccessToken({
    this.access_id,
    this.expires,
    this.authorize_type,
    this.refresh_id,
    this.user_id,
    this.user,
  });

  TBBAccessToken.fromJson(Map<String, dynamic> json) {
    access_id = json['access_id'];
    expires = json['expires'];
    authorize_type = json['authorize_type'];
    refresh_id = json['refresh_id'];
    user_id = json['user_id'];
    user = TBBUser.fromJson(json['user']) ?? null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_id'] = this.access_id;
    data['expires'] = this.expires;
    data['authorize_type'] = this.authorize_type;
    data['refresh_id'] = this.refresh_id;
    data['user_id'] = this.user_id;
    data['user'] = this.user;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
