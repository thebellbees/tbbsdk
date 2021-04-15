import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TBBLocalDatabaseService {
  final secureStorage = new FlutterSecureStorage();

  Future<dynamic> updateSecureAccess(Map<String, String> tokens) async {
 if(tokens!=null){
   if (tokens.isNotEmpty && tokens['access_id'].isNotEmpty) {
     await secureStorage.write(
         key: 'tbb_localState.access_id', value: tokens['access_id']);
   }
   if (tokens.isNotEmpty && tokens['refresh_id'].isNotEmpty) {
     await secureStorage.write(
         key: 'tbb_localState.refresh_id', value: tokens['refresh_id']);
   }
   if (tokens.isNotEmpty && tokens['expires'].isNotEmpty) {
     await secureStorage.write(
         key: 'tbb_localState.expires', value: tokens['expires']);
   }

 }
  }

  Future<dynamic> deleteSecureAccess(int code) async {
    if (code >= 1) {
      await secureStorage.delete(key: 'tbb_localState.access_id');
      await secureStorage.delete(key: 'tbb_localState.expires');
    }
    if (code == 0) {
      await secureStorage.delete(key: 'tbb_localState.refresh_id');
    }
  }

  Future<dynamic> putLocalState(String key, String value) async {
    if (int.parse(value, radix: 10) == 0 || value == '0' || value.isEmpty) {
      await secureStorage.delete(key: 'tbb_localState.$key');
    } else {
      await secureStorage.write(key: 'tbb_localState.$key', value: value);
    }
  }

  Future<String> getSecureAccess(String key) async {
    String token = await secureStorage.read(key: 'tbb_localState.$key');
    if (token == null) {
      token = '0';
    }
    return token;
  }

  Future<String> getLocalStateProp(String key) async {
    String prop = await secureStorage.read(key: 'tbb_localState.$key');
    if (prop == null) {
      prop = '0';
    }
    return prop;
  }

  Future<dynamic> flashSecureLocalState() async {
    await secureStorage.deleteAll();
  }
}
