import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../stores/login_store.dart';
import 'register_screen.dart'; // Import the register screen

class LoginScreen extends StatelessWidget {
  final _loginStore = LoginStore();

  LoginScreen({super.key});

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
              onChanged: _loginStore.setEmail,
            ),
            const SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              onChanged: _loginStore.setPassword,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _loginStore.login();
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Add your login logic here
                //navigate to login screen
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: const Text('Haven\'t registered yet? Register here!'),
            ),
          ],
        ),
      ),
    );
  }
}
