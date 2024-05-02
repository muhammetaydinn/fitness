// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness/service/storage/programs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/get_movement.dart';
import 'package:fitness/service/other/dprint.dart';

import '../data/convert_to_snake_case.dart';
import '../model/ExerciseModel.dart';
import 'exercises_screen.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({super.key});

  @override
  _ProgramDetailScreenState createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
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
      return InkWell(
        key: ValueKey(index),
        onTap: () {
          Get.toNamed('/movementDetail',
              arguments:
                  program.days?[dayIndex].exercises?[exerciseIndex].movementId);
        },
        child: Card(
          child: Stack(
            children: [
              Column(
                children: [
                  Image.asset(
                    // 'assets/exercises/0.jpg',
                    getImagePathsLocal(convertToSnakeCase(

                        //TODO:
                        //get id from controller and get name from movementlist
                        _allController.movementList
                            .where((p0) =>
                                p0.id ==
                                program.days?[dayIndex]
                                    .exercises?[exerciseIndex].movementId)
                            .first
                            .name))[0],
                  ),
                  Text(
                    getMovement(program.days?[dayIndex]
                                .exercises?[exerciseIndex].movementId)
                            .name ??
                        "",
                  ),
                  //set x rep x weight
                  Text(
                      "${program.days?[dayIndex].exercises?[exerciseIndex].setCount} x ${program.days?[dayIndex].exercises?[exerciseIndex].reps} : ${program.days?[dayIndex].exercises?[exerciseIndex].weightDuration} "),
                ],
              ),
              editMode
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: IconButton(
                              iconSize: 15,
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.secondary,
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
                                        title: const Text('Edit Excercise'),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            NumericTF(
                                              controller: _allController
                                                  .setCountController.value,
                                              labelText: "SetCount",
                                            ),
                                            NumericTF(
                                              controller: _allController
                                                  .repCountController.value,
                                              labelText: "Reps",
                                            ),
                                            NumericTF(
                                              controller: _allController
                                                  .weightDurationController
                                                  .value,
                                              labelText: "Weight/Time",
                                            ),
                                          ],
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
                                              //repCount
                                              String repCountText =
                                                  _allController
                                                      .repCountController
                                                      .value
                                                      .text;
                                              int repCount =
                                                  repCountText.isEmpty
                                                      ? 0
                                                      : int.parse(repCountText);
                                              //setCount
                                              String setCountText =
                                                  _allController
                                                      .setCountController
                                                      .value
                                                      .text;
                                              int setCount =
                                                  setCountText.isEmpty
                                                      ? 0
                                                      : int.parse(setCountText);

                                              //weightDuration
                                              String weightDurationText =
                                                  _allController
                                                      .weightDurationController
                                                      .value
                                                      .text;
                                              int weightDuration =
                                                  weightDurationText.isEmpty
                                                      ? 0
                                                      : int.parse(
                                                          weightDurationText);

                                              setState(() {
                                                program
                                                    .days?[dayIndex]
                                                    .exercises?[exerciseIndex]
                                                    .setCount = setCount;
                                                program
                                                    .days?[dayIndex]
                                                    .exercises?[exerciseIndex]
                                                    .reps = repCount;
                                                program
                                                        .days?[dayIndex]
                                                        .exercises?[exerciseIndex]
                                                        .weightDuration =
                                                    weightDuration;
                                              });

                                              _allController.setCountController
                                                  .value.text = '';
                                              _allController.repCountController
                                                  .value.text = '';
                                              _allController
                                                  .weightDurationController
                                                  .value
                                                  .text = '';

                                              Navigator.pop(context);
                                            },
                                            child: const Text('Save'),
                                          ),
                                        ],
                                      );
                                    });
                              },
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: IconButton(
                              style: ButtonStyle(
                                iconSize: MaterialStateProperty.all(15),
                                backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.secondary,
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
                                      title: const Text('Delete Exercise'),
                                      content: const Text(
                                          'Are you sure you want to delete this exercise?'),
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
                                              program.days?[dayIndex].exercises
                                                  ?.removeAt(exerciseIndex);
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
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
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
          //save button
          editMode
              ? IconButton.filled(
                  icon: const Icon(Icons.save),
                  onPressed: () {
                    //save the program
                    //update the local storage
                    ProgramService().updateStoredProgramList();
                    Get.back();
                  },
                )
              : Container(),
        ],
      ),
      //Days
      body: PopScope(
        canPop: true,
        onPopInvoked: (didPop) {
          if (didPop) {
            setState(() {
              editMode = false;
              program = _allController.programList[index].copyWith();
            });
          }
        },
        child: ListView.builder(
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
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                TextField(
                                                  controller: _allController
                                                      .dayNameController.value,
                                                  decoration:
                                                      const InputDecoration(
                                                    labelText: 'Day Name',
                                                  ),
                                                ),
                                              ],
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

                                                  _allController
                                                      .dayNameController
                                                      .value
                                                      .text = '';

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
                  //Exercises
                  ReorderableGridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: program.days?[ind].exercises?.length ?? 0,
                    itemBuilder: (context, idx) => buildItem(ind, idx),
                    onReorder: (oldIndex, newIndex) {
                      // if edit mode is enabled, then update the order of the items
                      if (editMode) {
                        setState(() {
                          final element =
                              program.days?[ind].exercises?.removeAt(oldIndex);
                          program.days?[ind].exercises
                              ?.insert(newIndex, element!);
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
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.red)),
                        child: const SizedBox(),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.75,
                    ),
                  ),
                  editMode
                      ? IconButton(
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
                          color: Theme.of(context).colorScheme.secondary,
                          icon: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            // NAVİGATE TO ADD EXERCISE SCREEN

                            var result = await Get.toNamed(
                              '/searchAddExercises',
                            );
                            dprint('result: $result');
                            if (result != null) {
                              dprint('result: $result');
                              List<ExcerciseModel> exercises = result;
                              setState(() {
                                for (var i = 0; i < exercises.length; i++) {
                                  program.days?[ind].exercises
                                      ?.add(exercises[i]);
                                }
                              });
                            }
                          },
                        )
                      : Container()
                ],
              ),
            );
          },
          itemCount: program.days?.length ?? 0,
        ),
      ),
    );
  }
}

class NumericTF extends StatelessWidget {
  TextEditingController controller;
  String labelText;
  NumericTF({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      keyboardType: TextInputType.number,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
      ),
    );
  }
}
