// forgot password screen takes email as input and sends a password reset link to the email

import 'package:fitness/service/forgot_password_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => {
                //unfocus the textfield
                FocusScope.of(context).unfocus(),
                ForgotPasswordService().sendEmail(emailController.text,false),
              },
              child: const Text('Send Reset OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
