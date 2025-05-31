// forgot password screen takes email as input and sends a password reset link to the email

import 'dart:math';

import 'package:email_validator/email_validator.dart';
import 'package:fitness/service/forgot_password_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Reset your password
            Text('Reset your password',
                style: TextStyle(
                    fontSize: 24.0, color: Theme.of(context).primaryColor)),
            const SizedBox(height: 16.0),
            Form(
              key: fromKey,
              child: TextFormField(
                validator: (value) => emailController.text.isEmpty || 
                        EmailValidator.validate(emailController.text)
                    ? null
                    : "Please enter a valid email",
                autovalidateMode: AutovalidateMode.always,
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (EmailValidator.validate(emailController.text)) {
                  FocusScope.of(context).unfocus();
                  ForgotPasswordService()
                      .sendEmail(emailController.text, false);
                } else {
                  Get.snackbar(
                    "Error",
                    "Please enter a valid email",
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: const Text('Send Reset OTP'),
            ),
            // did you remember your password? go back to login
            TextButton(
              onPressed: () => Get.back(),
              child: const Text('Remembered your password? Go back to login'),
            ),
          ],
        ),
      ),
    );
  }
}
