import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import 'register_screen.dart'; // Import the register screen

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final AllController allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
              onChanged: allController.loginEmail,
            ),
            const SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              onChanged: allController.loginPassword,
            ),
            const SizedBox(height: 16.0),
            Obx(
              () => ElevatedButton(
                onPressed: allController.loginEmail.isNotEmpty &&
                        allController.loginPassword.isNotEmpty
                    ? () {
                        allController.login();
                      }
                    : null,
                child: const Text('Login'),
              ),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Add your login logic here
                //navigate to login screen
                Get.toNamed('/forgotPassword');
              },
              child: const Text('Forgot Password?'),
            ),
            const SizedBox(height: 8.0),
            TextButton(
              onPressed: () {
                // Add your login logic here
                //navigate to login screen
                Get.toNamed('/register');
              },
              child: const Text('Haven\'t registered yet? Register here!'),
            ),
          ],
        ),
      ),
    );
  }
}
