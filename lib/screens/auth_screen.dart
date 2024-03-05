// create auth screen
// if user is not logged in, navigate to login screen
// else navigate to main screen
// use getx and get_storage
import 'package:fitness/screens/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'login_screen.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({super.key});
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    var accessToken = box.read('access_token');
    var refreshToken = box.read('refresh_token');

    if (accessToken != null && refreshToken != null) {
      //check whether access token is not expired
      bool hasExpired = JwtDecoder.isExpired(accessToken);
      if (hasExpired) {
        // refresh token here and get new access token
        //OR navigate to login screen
        return LoginScreen();
      } else {
        //navigate to main screen
        return const MainScreen();
      }
    } else {
      return LoginScreen();
    }
  }
}
