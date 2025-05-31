// a function that stores the access token and refresh token in the hive.
import 'package:fitness/model/auth/LoginResponseModel.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hive/hive.dart';

import '../other/dprint.dart';

void storeTokens(LoginResponseModel loginResponseModel) {
  // store tokens in Getstorage
  final box = GetStorage();
  box.write('access_token', loginResponseModel.access_token);
  box.write('refresh_token', loginResponseModel.refresh_token);
  box.write('email', loginResponseModel.email);
  box.write('first_name', loginResponseModel.first_name);
  box.write('last_name', loginResponseModel.last_name);
  box.write('user_id', loginResponseModel.user_id);
  dprint(
      'access_token: ${loginResponseModel.access_token}, refresh_token: ${loginResponseModel.refresh_token} and others stored');
}
