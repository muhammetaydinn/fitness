// create auth screen
// if user is not logged in, navigate to login screen
// else navigate to main screen
// use getx and get_storage
import 'package:fitness/screens/main_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../service/other/dprint.dart';
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
        dprint('Access token has expired');
        // Token expired, ama login olmadan da devam edebilsin
        return const MainScreen();
      } else {
        // Token geçerli, ana ekrana yönlendir
        return const MainScreen();
      }
    } else {
      // Giriş yapılmamışsa da ana ekrana yönlendir
      return const MainScreen();
    }
  }
}
