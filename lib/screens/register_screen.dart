//basic register screen name , lastname , email , password
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: allController.name,
              decoration: const InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              onChanged: allController.lastname,
              decoration: const InputDecoration(
                labelText: 'Last Name',
              ),
            ),
            TextField(
              onChanged: allController.email,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              onChanged: allController.password,
              decoration: const InputDecoration(
                labelText: 'Password',
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
                        allController.register();
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
    );
  }
}
