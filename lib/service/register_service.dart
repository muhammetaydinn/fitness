//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:fitness/model/ErrorResponseModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../constants/enums/screens.dart';
import '../controller/all_controller.dart';
import '../model/RegisterResponseModel.dart';

Future<void> registerUserService(
  String firstName,
  String lastName,
  String email,
  String password,
) async {
  // get getx controller
  final AllController allController = Get.put(AllController());
  try {
    print("api: ${Api.registerApi}");
    print("object: $firstName, $lastName, $email, $password");
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
      print('User registered successfully');
      print(response.body);
      //set allController.registerResponseModel
      allController.registerResponseModel =
          RegisterResponseModel.fromJson(json.decode(response.body));
      print(allController.registerResponseModel.refreshToken);

      //TODO: NAVIGATE TO LOGIN SCREEN AND SHOW SNACKBAR
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
        Get.snackbar(
          "Error",
          "Error registering user: ${errorRes.message}",
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  } catch (e) {
    print("catch: $e");
    Get.snackbar(
      "Error",
      "Error registering user: $e",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
