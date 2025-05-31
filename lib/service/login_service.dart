//import http
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fitness/constants/api.dart';
import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/model/auth/LoginResponseModel.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:fitness/service/init/init_service.dart';
import 'package:fitness/service/snackbar_error_exception.dart';
import 'package:get/get.dart' hide Response;
import 'other/dprint.dart';
import 'storage/login_storage.dart';

Future<void> loginUserService(
  String email,
  String password,
) async {
  try {
    Dio dio = DioConfig.getDio(baseUrl: Api.baseUrl);
    dprint("object: $email, $password");
    dprint(dio.options.baseUrl + Api.loginApi);
    var response = await dio.post(
      Api.loginApi,
      data: jsonEncode({
        "email": email,
        "password": password,
      }),
    );
    // Handle the response
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      loginSuccess(response);
    } else {
      snackBarErrorException(response.data);
    }
  } catch (e) {
    snackBarErrorException(e);
  }
}

void loginSuccess(Response response) {
  final allController = Get.put(AllController());
  dprint('User logined successfully');
  // set login response model
  LoginResponseModel loginResponseModel =
      LoginResponseModel.fromMap(response.data);
  // set the login response model in the init service for update the controller
  InitService().login(loginResponseModel);
  dprint(
      "access_token: ${loginResponseModel.access_token}, refresh_token: ${loginResponseModel.refresh_token}");
  // store the tokens in the storage
  storeTokens(loginResponseModel);
  //change the islogged in to true in getx
  allController.isLoggedin.value = true;
  Get.offAllNamed("/main");
  Get.snackbar(
    "User Logged in",
    "User logged in successfully",
    snackPosition: SnackPosition.BOTTOM,
  );
}
