//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:fitness/model/LoginResponseModel.dart';
import 'package:http/http.dart' as http;

import 'storage/login_storage.dart';

Future<String> loginUserService(
  String email,
  String password,
) async {
  try {
    print("api: ${Api.loginApi}");
    print("object: $email, $password");
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
      print('User logined successfully');
      LoginResponseModel loginResponseModel =
          LoginResponseModel.fromJson(response.body);
      print(
          "access_token: ${loginResponseModel.access_token}, refresh_token: ${loginResponseModel.refresh_token}");

      storeTokens(
          loginResponseModel.access_token, loginResponseModel.refresh_token);
      //change the islogged in to true in getx
      return "success";
    } else {
      print(response.body);
      print(response.statusCode);
      return "failed";
      //TODO: handle error
    }
  } catch (e) {
    return "failed";
  }
}
