//import http
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fitness/constants/api.dart';
import 'package:fitness/model/auth/RegisterResponseModel.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:fitness/service/snackbar_error_exception.dart';
import 'package:get/get.dart' hide Response;

import '../controller/all_controller.dart';
import 'other/dprint.dart';

Future<void> registerUserService(
  String firstName,
  String lastName,
  String email,
  String password,
) async {
  // get getx controller
  try {
    Dio dio = DioConfig.getDio(baseUrl: Api.baseUrl);
    dprint("object: $firstName, $lastName, $email, $password");
    dprint("url: ${Api.baseUrl + Api.registerApi}");
    var response = await dio.post(
      Api.registerApi,
      data: jsonEncode({
        "email": email,
        "password": password,
        "firstname": firstName,
        "lastname": lastName,
        'role': "USER"
      }),
    );

    // Handle the response
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      registerSuccess(response);
    } else {
      dprint(response);
      snackBarErrorException(response);
    }
  } catch (e) {
    snackBarErrorException(e);
  }
}

void registerSuccess(Response response) {
  final AllController allController = Get.put(AllController());

  dprint('User registered successfully');
  dprint(response.data);
  //set allController.registerResponseModel
  allController.registerResponseModel =
      RegisterResponseModel.fromMap(response.data);
  dprint(allController.registerResponseModel.refreshToken.toString());

  Get.back();
  Get.snackbar(
    "User Registered",
    "User registered successfully",
    snackPosition: SnackPosition.BOTTOM,
  );
}
