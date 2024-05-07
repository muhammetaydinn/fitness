//basic register screen name , lastname , email , password
import 'package:email_validator/email_validator.dart';
import 'package:fitness/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final AllController allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    //get allcontroller

    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: allController.name,
                decoration: const InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 16.0), // Add a SizedBox
              TextField(
                onChanged: allController.lastname,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 16.0), //
              TextFormField(
                validator: (value) => allController.email.isEmpty ||
                        EmailValidator.validate(allController.email.value)
                    ? null
                    : "Please enter a valid email",
                autovalidateMode: AutovalidateMode.always,
                onChanged: allController.email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
              ),
              const SizedBox(height: 16.0), //
              TextField(
                onChanged: allController.password,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                obscureText: true,
              ),

              const SizedBox(height: 16.0),
              Obx(
                () => ElevatedButton(
                  onPressed: allController.name.isNotEmpty &&
                          allController.lastname.isNotEmpty &&
                          allController.email.isNotEmpty &&
                          allController.password.isNotEmpty
                      ? () {
                          if (EmailValidator.validate(
                              allController.email.value)) {
                            FocusScope.of(context).unfocus();
                            allController.register();
                          } else {
                            Get.snackbar(
                              "Error",
                              "Please enter a valid email",
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          }
                        }
                      : null,
                  child: const Text('Register'),
                ),
              ),
              //add have an account? login here
              const SizedBox(height: 16.0),
              TextButton(
                onPressed: () {
                  // Add your login logic here
                  //navigate to login screen
                  Get.back();
                },
                child: const Text('Have an account? Login here'),
              ),
              // TextButton(
              //   onPressed: () {
              //     // Add your login logic here
              //     //navigate to login screen
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => LoginScreen()),
              //     );
              //   },
              //   child: const Text('Have an account? Login here'),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
