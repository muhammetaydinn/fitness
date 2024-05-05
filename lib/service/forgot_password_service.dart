import 'package:dio/dio.dart';
import 'package:fitness/constants/api.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordService {
  final dio = Dio(getBaseOptions()); // Provide a dio instance

  //send email
  Future<bool> sendEmail(String email, bool isScreenOtp) async {
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
      return true;
      //show snackbar
    } else {
      Get.snackbar(
        "Error",
        "${response.data['message']}",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
  }

  // send otp
  Future<bool> sendOTP(String otp, String email) async {
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
      return true;
    } else {
      Get.snackbar(
        "Error",
        "${response.data['message']}",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
  }

  // new password
  Future<bool> newPassword(
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

      return true;
    } else {
      Get.snackbar(
        "Error",
        "${response.data['message']}",
        snackPosition: SnackPosition.BOTTOM,
      );
      return false;
    }
  }
}
