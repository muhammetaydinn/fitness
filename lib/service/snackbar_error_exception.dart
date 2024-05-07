import 'package:dio/dio.dart';
import 'package:fitness/model/ErrorResponseModel.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:get/get.dart';

void snackBarErrorException(
  Object e,
) {
  //TODO: BURADA OBJE TİPİNE GÖRE İFLERİ KOY BURADAKİ ERRORRES HATA VERECEK
  dprint(e.toString());
  if (e.toString().contains("The request took longer than")) {
    Get.snackbar("Error", "Connection failed, please try again later",
        snackPosition: SnackPosition.BOTTOM);
  }
  //type of e Map<String, dynamic>
  else if (e is Map<String, dynamic>) {
    var errorRes = ErrorResponseModel.fromMap(e);
    dprint("error: ${errorRes.message}");
    if (errorRes.message.contains("Duplicate ")) {
      Get.snackbar(
        "Error",
        "This mail is already registered",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (errorRes.message.contains("Invalid email")) {
      dprint("error: ${errorRes.message}");
      Get.snackbar(
        "Error",
        "Error registering user: ${errorRes.message}",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (errorRes.message
        .contains("Login Failed One or more fields or invalid")) {
      Get.snackbar(
        "Error",
        "Login Failed One or more fields or invalid",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (errorRes.status == 403) {
      Get.snackbar("Unauthorized",
          "You are not authorized to access this page, please logout and login first",
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar("Error", "Error: ${errorRes.message}",
          snackPosition: SnackPosition.BOTTOM);
    }
  } else {
    Get.snackbar("Error", "Error: $e", snackPosition: SnackPosition.BOTTOM);
  }
}
