//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:fitness/model/ErrorResponseModel.dart';
import 'package:fitness/model/auth/RegisterResponseModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constants/enums/screens.dart';
import '../controller/all_controller.dart';
import 'other/dprint.dart';
import 'other/dprint.dart';

Future<void> registerUserService(
  String firstName,
  String lastName,
  String email,
  String password,
) async {
  // get getx controller
  final AllController allController = Get.put(AllController());
  try {
    dprint("api: ${Api.registerApi}");
    dprint("object: $firstName, $lastName, $email, $password");
    // Make API call to register the user
    final response = await http.post(
      headers: {"Content-Type": "application/json"},
      Uri.parse(Api.registerApi),
      body: jsonEncode({
        "email": email,
        "password": password,
        "firstname": firstName,
        "lastname": lastName,
        'role': "USER"
      }),
    );

    // Handle the response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      dprint('User registered successfully');
      dprint(response.body);
      //set allController.registerResponseModel
      allController.registerResponseModel =
          RegisterResponseModel.fromJson(json.decode(response.body));
      dprint(allController.registerResponseModel.refreshToken.toString());

      Get.back();
      Get.snackbar(
        "User Registered",
        "User registered successfully",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else {
      var errorRes = ErrorResponseModel.fromJson(response.body);
      if (errorRes.message.contains("Duplicate ")) {
        Get.snackbar(
          "Error",
          "This mail is already registered",
          snackPosition: SnackPosition.BOTTOM,
        );
      } else {
        dprint("error: ${errorRes.message}");
        Get.snackbar(
          "Error",
          "Error registering user: ${errorRes.message}",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  } catch (e) {
    dprint("catch: $e");
    Get.snackbar(
      "Error",
      "Error registering user: $e",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
