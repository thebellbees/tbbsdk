import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalDatabaseService {
  final accessToken = new FlutterSecureStorage();

  updateSecurityToken(String token) async {
    await accessToken.write(key: 'access_token', value: token);
  }

  deleteAccessToken() async {
    await accessToken.delete(key: 'access_token');
  }

  Future<String> getAccessToken() async {
    String token = await accessToken.read(key: 'access_token');
    if (token == null) {
      token = '0';
    }
    return token;
  }
}
