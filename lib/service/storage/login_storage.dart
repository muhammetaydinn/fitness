// a function that stores the access token and refresh token in the hive.
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';

import '../other/dprint.dart';

void storeTokens(String accessToken, String refreshToken, String email,
    String firstName, String lastName, int userId) {
  // store tokens in Getstorage
  final box = GetStorage();
  box.write('access_token', accessToken);
  box.write('refresh_token', refreshToken);
  box.write('email', email);
  box.write('first_name', firstName);
  box.write('last_name', lastName);
  box.write('user_id', userId);
  dprint('access_token: $accessToken, refresh_token: $refreshToken was stored');
}
