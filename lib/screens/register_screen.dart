//basic register screen name , lastname , email , password
import 'package:fitness/screens/login_screen.dart';
import 'package:fitness/stores/register_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class RegisterScreen extends StatelessWidget {
  final _registerStore = RegisterStore();

  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Observer(
              builder: (_) => TextField(
                onChanged: _registerStore.setFirstName,
                decoration: const InputDecoration(labelText: 'First Name'),
              ),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: _registerStore.setLastName,
                decoration: const InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: _registerStore.setEmail,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
            ),
            Observer(
              builder: (_) => TextField(
                onChanged: _registerStore.setPassword,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 16.0),
            Observer(
              builder: (_) => ElevatedButton(
                onPressed:
                    _registerStore.isValid ? _registerStore.register : null,
                child: const Text('Register'),
              ),
            )
            //add have an account? login here
            ,
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Add your login logic here
                //navigate to login screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: const Text('Have an account? Login here'),
            )
          ],
        ),
      ),
    );
  }
}
