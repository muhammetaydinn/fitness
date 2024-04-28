import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/get_movement.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

import '../data/convert_to_snake_case.dart';
import 'exercises_screen.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({super.key});

  @override
  _ProgramDetailScreenState createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  final data = List.generate(50, (index) => index);

  final _allController = Get.put(AllController());

  //get arguments
  final index = Get.arguments;

  //edit mode
  bool editMode = false;

  @override
  Widget build(BuildContext context) {
    var program = _allController.programList[index].copyWith();

    dprint(program.days?.length);
    Widget buildItem(int dayIndex, int exerciseIndex) {
      return Card(
        key: ValueKey(index),
        child: Column(
          children: [
            Text(
              getMovement(program
                          .days?[dayIndex].exercises?[exerciseIndex].movementId)
                      .name ??
                  "",
            ),
            Image.network(getImagePaths(convertToSnakeCase(
                //TODO:
                //get id from controller and get name from movementlist
                _allController.movementList
                    .where((p0) =>
                        p0.id ==
                        program.days?[dayIndex].exercises?[exerciseIndex]
                            .movementId)
                    .first
                    .name))[0]),
            const Text("n x n")
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(program.name ?? ""),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: editMode
                ? const Icon(
                    Icons.edit,
                    color: Colors.green,
                  )
                : const Icon(Icons.edit_off),
            onPressed: () {
              setState(() {
                editMode = !editMode;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        //right part has raidus
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(20.0)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(program.days?[ind].name ?? "",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.white,
                                )),
                      ),
                    ),
                    editMode
                        ? Row(
                            children: [
                              IconButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.primary,
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                color: Colors.white,
                                icon: const Icon(Icons.edit_outlined),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          title: const Text('Edit Day'),
                                          content: TextField(
                                            controller: _allController
                                                .dayNameController.value,
                                            decoration: const InputDecoration(
                                              labelText: 'Day Name',
                                            ),
                                          ),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Text('Cancel'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  program.days?[ind].name =
                                                      _allController
                                                          .dayNameController
                                                          .value
                                                          .text;
                                                });

                                                _allController.dayNameController
                                                    .value.text = '';

                                                Navigator.pop(context);
                                              },
                                              child: const Text('Save'),
                                            ),
                                          ],
                                        );
                                      });
                                },
                              ),
                              IconButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).colorScheme.primary,
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                color: Colors.white,
                                icon: const Icon(Icons.delete_outline),
                                onPressed: () {
                                  // _deleteExercise(index);
                                  //show dialog
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Delete Day'),
                                        content: const Text(
                                            'Are you sure you want to delete this day?'),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                program.days?.removeAt(ind);
                                              });
                                              Navigator.pop(context);
                                            },
                                            child: const Text('Delete'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
                ReorderableGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: program.days?[ind].exercises?.length ?? 0,
                  itemBuilder: (context, idx) => buildItem(ind, idx),
                  onReorder: (oldIndex, newIndex) {
                    // if edit mode is enabled, then update the order of the items
                    if (editMode) {
                      setState(() {
                        setState(() {
                          final element = data.removeAt(oldIndex);
                          data.insert(newIndex, element);
                        });
                      });
                    } else {
                      //if edit mode is not enabled, then do nothing show a snackbar
                      Get.snackbar(
                        'Edit Mode',
                        'Please enable edit mode to reorder the items',
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 3),
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        colorText: Colors.black,
                      );
                    }
                  },
                  placeholderBuilder: (dragIndex, dropIndex, dragWidget) {
                    return Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: const SizedBox(),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.75,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: program.days?.length ?? 0,
      ),
    );
  }
}
