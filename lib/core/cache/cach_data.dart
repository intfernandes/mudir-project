import 'package:shared_preferences/shared_preferences.dart';
class CacheData {
  static late SharedPreferences userToken;

  static Future<void> cacheInit() async {
    userToken = await SharedPreferences.getInstance();

  }

  static setUserToken({required String key, required String token}) async {
    await userToken.setString(key, token);
  }
  static  getUserToken({required String key}) {
    return userToken.get(key);
  }
  static  deleteUserToken({required String key}) {
    return userToken.remove(key);
  }
}