import 'package:dio/dio.dart';
import 'package:fitness/constants/api.dart';
import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/snackbar_error_exception.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> changePassword(
  String oldPassword,
  String newPassword,
) async {
  final allController = Get.put(AllController());
  Dio dio = DioConfig.getDio(baseUrl: Api.baseUrl);

  try {
    dprint("api: ${Api.changePasswordPatchApi}");
    dprint("object: $oldPassword, $newPassword");
    var response = await dio.patch(
      Api.changePasswordPatchApi,
      data: {
        "currentPassword": oldPassword,
        "newPassword": newPassword,
        "confirmationPassword": newPassword
      },
    );

    // Handle the response
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      dprint('Password changed successfully');
      Get.snackbar("Password Changed", response.data.toString(),
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green);
      //TODO: PROFILE SCREEN TOGGLE CLOSE AND CLEAR TEXTFIELDS
      dprint(response.data);
      //clear the textfields and close the toggle
      allController.currentPasswordController.value.clear();
      allController.newPasswordController.value.clear();
      allController.confirmPasswordController.value.clear();
      allController.visible.value = false;
    } else {
      snackBarErrorException(response);
    }
  } catch (e) {
    dprint(e);
    Get.snackbar(
      "Error",
      "Something went wrong $e",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
    );
  }
}
