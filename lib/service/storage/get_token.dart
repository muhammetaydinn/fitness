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
Future<void> setLoginResponseModel(
    LoginResponseModel loginResponseModel) async {
  var token = loginResponseModel.access_token;
  if (token != null) {
    //STORE THE TOKENS
    final box = GetStorage();
    box.write('access_token', loginResponseModel.access_token);
    box.write('refresh_token', loginResponseModel.refresh_token);
    box.write('email', loginResponseModel.email);
    box.write('first_name', loginResponseModel.first_name);
    box.write('last_name', loginResponseModel.last_name);
    box.write('user_id', loginResponseModel.user_id);
  }
}
