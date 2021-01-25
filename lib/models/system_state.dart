import 'package:tbbsdk/models/user.dart';
import 'package:tbbsdk/utilities/local_database.dart';

class LocalState {
  String access_id;
  String refresh_id;
  User user;

  bool get loggedIn => user != null && user.isEmpty == false;

  Future<String> get otp_from async => await _getProp("otp_from");

  LocalState({
    this.access_id,
    this.refresh_id,
    this.user,
  });

  LocalState.fromJson(Map<String, dynamic> json) {
    access_id = json['access_id'];
    refresh_id = json['refresh_id'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_id'] = this.access_id;
    data['loggedIn'] = this.loggedIn;
    data['refresh_id'] = this.refresh_id;
    data['user'] = this.user;
    data['otp_from'] = this.otp_from;

    return data;
  }

  @override
  toString() => this.toJson().toString();

  _getProp(String key) async {
    LocalDatabaseService localDatabaseService = new LocalDatabaseService();
    return await localDatabaseService.getLocalStateProp(key);
  }
}
