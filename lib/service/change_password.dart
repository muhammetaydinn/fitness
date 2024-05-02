import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/storage/get_token.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

Future<String> changePassword(
  String oldPassword,
  String newPassword,
) async {
  String accessToken = await getToken();
  final allController = Get.put(AllController());

  try {
    dprint("api: ${Api.changePasswordPatchApi}");
    dprint("object: $oldPassword, $newPassword");
    final response = await http.patch(
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $accessToken"
      },
      Uri.parse(Api.changePasswordPatchApi),
      body: jsonEncode({
        "currentPassword": oldPassword,
        "newPassword": newPassword,
        "confirmationPassword": newPassword
      }),
    );

    // Handle the response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      dprint('Password changed successfully');
      Get.snackbar("Password Changed", response.body.toString(),
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);
      //TODO: PROFILE SCREEN TOGGLE CLOSE AND CLEAR TEXTFIELDS
      dprint(response.body);
      //clear the textfields and close the toggle
      allController.currentPasswordController.value.clear();
      allController.newPasswordController.value.clear();
      allController.confirmPasswordController.value.clear();
      allController.visible.value = false;
      return "success";
    } else {
      dprint(response.body.toString());
      Get.snackbar("Error", response.body.toString(),
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
      dprint(response.statusCode);
      return "failed";
    }
  } catch (e) {
    dprint(e);
    Get.snackbar(
      "Error",
      "Something went wrong $e",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
    );
    return "failed";
  }
}
