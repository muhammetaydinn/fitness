import 'package:email_validator/email_validator.dart';
import 'package:fitness/service/login_service.dart';
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
      body: Container(
        //gradient background color white to light blue

        child: Stack(
          children: [
            // Positioned(
            //   top: 50,
            //   left: 150,
            //   child: SizedBox(
            //       height: 250,
            //       child: Image.asset(
            //         'assets/MS_Sports.png',
            //         fit: BoxFit.contain,
            //       )),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      //get height from the screen 10% of the height
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    Text('Login',
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                )),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.always,
                      validator: (value) => allController.loginEmail.isEmpty ||
                              EmailValidator.validate(
                                  allController.loginEmail.value)
                          ? null
                          : "Please enter a valid email",
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      onChanged: allController.loginEmail,
                    ),
                    const SizedBox(height: 16.0),
                    TextField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      onChanged: allController.loginPassword,
                    ),
                    const SizedBox(height: 16.0),
                    Obx(
                      () => ElevatedButton(
                        onPressed: allController.loginEmail.isEmpty ||
                                allController.loginPassword.isNotEmpty
                            ? () {
                                if (EmailValidator.validate(
                                    allController.loginEmail.value)) {
                                  FocusScope.of(context).unfocus();
                                  loginUserService(
                                    allController.loginEmail.value,
                                    allController.loginPassword.value,
                                  );
                                } else {
                                  Get.snackbar(
                                    "Error",
                                    "Please enter a valid email",
                                    snackPosition: SnackPosition.BOTTOM,
                                  );
                                }
                                //unfocus the textfield
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
                      child:
                          const Text('Haven\'t registered yet? Register here!'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
