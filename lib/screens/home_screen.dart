import 'package:fitness/service/storage/programs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../service/other/dprint.dart';
import '../service/sync.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _allController = Get.put(AllController());
  @override
  Widget build(BuildContext context) {
    //todo get init for local json data

    return Scaffold(
      appBar: AppBar(
        title:
            Obx(() => Text('Programs: ${_allController.programList.length}')),
        backgroundColor: Theme.of(context).colorScheme.primary,
        //sync button
        actions: [
          IconButton(
            icon: const Icon(Icons.sync),
            onPressed: () async {
              //TODO: sync data
              // allController.getPrograms();
              //then show snackbar
              Get.snackbar(
                'Syncing',
                'Syncing your programs',
                snackPosition: SnackPosition.BOTTOM,
                duration: const Duration(seconds: 3),
                backgroundColor: Theme.of(context).colorScheme.background,
                colorText: Colors.black,
              );
              //then show status of the sync snackbar
              await syncPrograms();

              //send data to the server
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
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // //delete the program
                          // _allController.programList.removeAt(index);
                          // //update the local storage
                          //show dialog
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Delete Program'),
                                content: const Text(
                                    'Are you sure you want to delete this program?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      //delete the program
                                      ProgramService().deleteProgram(
                                          _allController.programList[index],
                                          index);

                                      //update the local storage
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Yes'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('No'),
                                  )
                                ],
                              );
                            },
                          );
                        },
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _allController.programList[index].name ?? "",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          Text(
                            'Days: ${_allController.programList[index].days?.length}',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          Text(
                              style: Theme.of(context).textTheme.titleSmall,
                              'Exercises: ${_allController.programList[index].days?.fold(0, (previousValue, element) => previousValue + element.exercises!.length)}')
                        ],
                      ),
                      onTap: () {
                        //go to the program detail page
                        Get.toNamed('/programDetail', arguments: index);
                      },
                    ),
                  );
                },
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('No programs available'),
                  const SizedBox(
                    height: 20,
                  ),
                  // SYNC BUTTON
                  ElevatedButton(
                    onPressed: () async {
                      await syncPrograms();
                    },
                    child: const Text('Get Programs from Server'),
                  )
                ],
              )),
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
