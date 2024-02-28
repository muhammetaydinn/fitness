//import http
import 'dart:convert';

import 'package:fitness/constants/api.dart';
import 'package:http/http.dart' as http;

Future<String> registerUserService(
  String firstName,
  String lastName,
  String email,
  String password,
) async {
  try {
    print("api: ${Api.baseUrl}/auth/register");
    print("object: $firstName, $lastName, $email, $password");
    // Make API call to register the user
    final response = await http.post(
      headers: {"Content-Type": "application/json"},
      Uri.parse("${Api.baseUrl}/auth/register"),
      body: jsonEncode({
        "email": email,
        "password": password,
        "firstName": firstName,
        "lastName": lastName,
        'role': "USER"
      }),
    );

    // Handle the response
    if (response.statusCode >= 200 && response.statusCode < 300) {
      print('User registered successfully');

      return response.body;
      //TODO: NAVIGATE TO LOGIN SCREEN AND SHOW SNACKBAR
    } else {
      print(response.body);
      print(response.statusCode);
      return "else";
    }
  } catch (e) {
    return "catch: $e";
  }
}
