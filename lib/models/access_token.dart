import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/tbbsdk.dart';

class TBBAccessToken {
  String accessId;
  String expires;
  String authorizeType;
  String refreshId;
  String userId;
  TBBUser user;

  TBBAccessToken({
    this.accessId,
    this.expires,
    this.authorizeType,
    this.refreshId,
    this.userId,
    this.user,
  });

  TBBAccessToken.fromJson(Map<String, dynamic> json) {
    accessId = json['access_id'];
    expires = json['expires'];
    authorizeType = json['authorize_type'];
    refreshId = json['refresh_id'];
    userId = json['user_id'];
    user = TBBUser.fromJson(json['user']) ?? null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_id'] = this.accessId;
    data['expires'] = this.expires;
    data['authorize_type'] = this.authorizeType;
    data['refresh_id'] = this.refreshId;
    data['user_id'] = this.userId;
    data['user'] = this.user;

    return data;
  }

  @override
  toString() => this.toJson().toString();
}
