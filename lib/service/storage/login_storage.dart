// a function that stores the access token and refresh token in the hive.
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';

void storeTokens(String accessToken, String refreshToken) {
  // store tokens in Getstorage
  final box = GetStorage();
  box.write('access_token', accessToken);
  box.write('refresh_token', refreshToken);
  print('access_token: $accessToken, refresh_token: $refreshToken was stored');
}
