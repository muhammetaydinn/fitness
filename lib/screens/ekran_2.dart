import 'package:flutter/material.dart';

class Ekran2 extends StatefulWidget {
  const Ekran2({super.key});

  @override
  State<Ekran2> createState() => _Ekran2State();
}

class _Ekran2State extends State<Ekran2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fitness aa'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text('Hello asdasd'),
      ),
    );
  }
}
