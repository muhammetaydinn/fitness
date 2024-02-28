import 'package:flutter/material.dart';

class Ekran3 extends StatefulWidget {
  const Ekran3({super.key});

  @override
  State<Ekran3> createState() => _Ekran3State();
}

class _Ekran3State extends State<Ekran3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My asd Programs'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: const Center(
        child: Text('Hello Woasdfasdfasdfrld'),
      ),
    );
  }
}
