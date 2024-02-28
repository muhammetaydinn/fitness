//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:http/http.dart' as http;

Future<String> loginUserService(
  String email,
  String password,
) async {
  try {
    print("api: ${Api.baseUrl}/auth/authenticate");
    print("object: $email, $password");
    final response = await http.post(
      headers: {"Content-Type": "application/json"},
      Uri.parse("${Api.baseUrl}/auth/authenticate"),
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    // Handle the response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      print('User logined successfully');

      return response.body;
    } else {
      print(response.body);
      print(response.statusCode);
      return "else";
      //TODO: handle error
    }
  } catch (e) {
    return "catch: $e";
  }
}
