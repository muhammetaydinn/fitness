import 'package:dio/dio.dart';
import 'package:fitness/constants/api.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:fitness/service/snackbar_error_exception.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordService {
  Dio dio = DioConfig.getDio(baseUrl: Api.baseUrl);

  //send email
  Future<void> sendEmail(String email, bool isScreenOtp) async {
    // Send email to the user with dio
    var response = await dio.post(
      Api.resetPasswordOtpApi,
      data: {
        'email': email,
      },
    );
    if (response.statusCode == 200) {
      Get.snackbar(
        "Email Sent",
        "Email sent successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
      );
      //if current screen is not otp screen then navigate to otp screen
      !isScreenOtp ? Get.toNamed("/otp", arguments: email) : null;
      //show snackbar
    } else {
      snackBarErrorException(response.data);
    }
  }

  // send otp
  Future<void> sendOTP(String otp, String email) async {
    var response = await dio.post(Api.verifyOtpApi, data: {
      'otp': otp,
      'email': email,
    });
    if (response.statusCode == 200) {
      Get.snackbar(
        "OTP Verified",
        "OTP verified successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
      );
      //navigate to new password screen
      Get.toNamed(
        "/new-password",
        arguments: {
          'email': email,
          'otp': otp,
        },
      );
    } else {
      snackBarErrorException(response.data);
    }
  }

  // new password
  Future<void> newPassword(
    String email,
    String otp,
    String password,
  ) async {
    var response = await dio.post(Api.newPasswordApi,
        data: {"email": email, "newPassword": password, "otp": otp});
    if (response.statusCode == 200) {
      Get.snackbar(
        "Password Updated",
        "Password updated successfully",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
      );
      //reset all stack and navigate to login screen
      Get.offAllNamed("/login");

    } else {
      snackBarErrorException(response.data);
    }
  }
}
