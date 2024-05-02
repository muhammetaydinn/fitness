//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:fitness/model/auth/LoginResponseModel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'other/dprint.dart';
import 'other/dprint.dart';
import 'storage/login_storage.dart';

Future<String> loginUserService(
  String email,
  String password,
) async {
  try {
    dprint("api: ${Api.loginApi}");
    dprint("object: $email, $password");
    final response = await http.post(
      headers: {"Content-Type": "application/json"},
      Uri.parse(Api.loginApi),
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    // Handle the response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      dprint('User logined successfully');
      LoginResponseModel loginResponseModel =
          LoginResponseModel.fromJson(response.body);
      dprint(
          "access_token: ${loginResponseModel.access_token}, refresh_token: ${loginResponseModel.refresh_token}");
      dprint(loginResponseModel);
      storeTokens(
          loginResponseModel.access_token,
          loginResponseModel.refresh_token,
          loginResponseModel.email,
          loginResponseModel.first_name,
          loginResponseModel.last_name,
          loginResponseModel.user_id);
      //change the islogged in to true in getx
      return "success";
    } else {
      dprint(response.body);
      dprint(response.statusCode);
      if (response.statusCode == 403) {
        Get.snackbar("Unauthorized", "",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red,
            colorText: Colors.white);

        return "unauthorized";
      }
      return "failed";
      //TODO: handle error
    }
  } catch (e) {
    dprint(e);
    return "failed";
  }
}
