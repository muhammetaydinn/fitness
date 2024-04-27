import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';

import '../service/logout.dart';

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
        title: const Text('Profile'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      //profile screen
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            //name email with card
            Card(
              child: Column(
                children: [
                  //TODO: get name and email from the storage
                  const ListTile(
                    title: Text('Name:'),
                    subtitle: Text('John Doe'),
                  ),
                  const ListTile(
                    title: Text('Email:'),
                    subtitle: Text('johndoe@gmal.com'),
                  ),
                  //logout button
                  ListTile(
                    onTap: () {
                      dprint('logout');
                      //show dialog
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Logout'),
                            content:
                                const Text('Are you sure you want to logout?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('No'),
                              ),
                              TextButton(
                                onPressed: () async {
                                  //TODO: logout
                                  Navigator.of(context).pop();
                                  await logoutUserService();
                                },
                                child: const Text('Yes'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    leading: const Icon(Icons.logout, color: Colors.red),
                    title: const Text('Logout',
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
