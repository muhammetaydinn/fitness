import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../service/other/dprint.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  final _allController = Get.put(AllController());
  @override
  Widget build(BuildContext context) {
    //todo get init for local json data
  
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Fitness Programs'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        //sync button
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () {
              //TODO: sync data
              // allController.getPrograms();
              //then show snackbar
              Get.snackbar(
                'Syncing',
                'Syncing your programs',
                snackPosition: SnackPosition.TOP,
                duration: const Duration(seconds: 3),
                backgroundColor: Theme.of(context).colorScheme.background,
                colorText: Colors.black,
              );
              //then show status of the sync snackbar
              Get.snackbar(
                'Synced',
                'Your programs are synced',
                snackPosition: SnackPosition.TOP,
                duration: const Duration(seconds: 3),
                backgroundColor: Theme.of(context).colorScheme.background,
                colorText: Colors.black,
              );

              //send data to the server
              dprint(_allController.programList);
            },
          )
        ],
      ),
      body: Center(
        child: Obx(() => _allController.programList.isNotEmpty
            ? ListView.builder(
                itemCount: _allController.programList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(_allController.programList[index].name ?? ""),
                      onTap: () {},
                    ),
                  );
                },
              )
            : const Text('No programs available')),
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
          //  _allController.
          Get.toNamed('/addExercise');
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
