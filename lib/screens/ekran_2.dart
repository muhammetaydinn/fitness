import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      floatingActionButton: FloatingActionButton.extended(
        label: const Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.add, color: Colors.white),
            SizedBox(
              width: 5,
            ),
            Text(
              'Add Exercise',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        onPressed: () {
          // Add your onPressed code here!
          Get.toNamed('/addExercise');
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
