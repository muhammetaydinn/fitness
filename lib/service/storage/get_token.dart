import 'package:fitness/model/auth/LoginResponseModel.dart';
import 'package:get_storage/get_storage.dart';

String? getToken() {
  final box = GetStorage();
  return box.read('access_token');
}

Future<LoginResponseModel> getLoginResponseModel() async {
  final box = GetStorage();
  return LoginResponseModel(
    access_token: box.read('access_token'),
    refresh_token: box.read('refresh_token'),
    email: box.read('email'),
    first_name: box.read('first_name'),
    last_name: box.read('last_name'),
    user_id: box.read('user_id'),
  );
}
