import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../controller/all_controller.dart';
import '../model/DayModel.dart';
import '../model/ProgramModel.dart';

class AddExercisesScreen extends StatefulWidget {
  const AddExercisesScreen({super.key});

  @override
  _AddExercisesScreenState createState() => _AddExercisesScreenState();
}

class _AddExercisesScreenState extends State<AddExercisesScreen> {
  final TextEditingController _programNameController = TextEditingController();
  final TextEditingController _dayNumberController = TextEditingController();
  final _allController = Get.put(AllController());
  final TextEditingController dialogController = TextEditingController();

  final List<Exercise> _exercises = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Fitness Program'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _programNameController,
              decoration: const InputDecoration(
                labelText: 'Program Name',
              ),
            ),
            TextField(
              //only number keyboard 0 to 9
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],

              controller: _dayNumberController,
              decoration: const InputDecoration(
                labelText: 'Day Number',
              ),
            ),

            //if two textield are not empty then show add exercise button

            ElevatedButton(
              onPressed: () {
                var uuid = const Uuid();
                _addExercise(
                    _programNameController.text,
                    int.parse(_dayNumberController.text),
                    //generate unique id for each day integer
                    uuid.v4());
              },
              child: const Text('Add Exercise'),
            ),
            Row(
              children: [
                Obx(
                  () => _allController.programModel.value.days?.isNotEmpty ??
                          false
                      ?
                      //top right and bottom right radius
                      // and there is a text inside container
                      //align to the left
                      Container(
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.indigoAccent),
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            _allController.programModel.value.name ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      : Container(),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: Obx(
              () => ListView.builder(
                itemCount: _allController.programModel.value.days?.length ?? 0,
                itemBuilder: (context, index) {
                  //add title bar and edit and delete button for title

                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            //top right and bottom right radius
                            // and there is a text inside container day number
                            // right of container edit and delete button

                            Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  color: Colors.indigoAccent),
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                _allController
                                        .programModel.value.days?[index].name ??
                                    '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  //get color from theme
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
                                //edit day
                                //open a textfield to edit day name
                                //save the new day name
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: const Text('Edit Day'),
                                        content: TextField(
                                          controller: dialogController,
                                          decoration: const InputDecoration(
                                            labelText: 'Day Name',
                                          ),
                                        ),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              //CHANGE DAY NAME

                                              Navigator.pop(context);
                                            },
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              print(
                                                  "day name: ${_allController.programModel.value.days?[index].name} changed to ${dialogController.text}");
                                              _allController.programModel
                                                  .update((val) {
                                                val?.days?[index].name =
                                                    dialogController.text;
                                              });
                                              print(
                                                  "day name: ${_allController.programModel.value.days?[index].name} ");
                                              //clear the textfield
                                              dialogController.clear();

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
                                  //get color from theme
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
                                //edit day
                                _deleteExercise(index);
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //big add icon
                        IconButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                //get color from theme
                                Theme.of(context).colorScheme.primary,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            onPressed: () {
                              //add exercise
                            },
                            icon: const Icon(
                              Icons.add_outlined,
                              size: 50,
                              color: Colors.white,
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  void _addExercise(
    String name,
    int numberDays,
    String dayId,
  ) {
    List<Day> days = [];
    for (int i = 0; i < numberDays; i++) {
      days.add(Day(name: 'Day ${i + 1}', exercises: []));
    }

    _allController.setProgramModel = ProgramModel(
      name: _programNameController.text,
      days: days,
      dayId: dayId,
    );
  }

  void _deleteExercise(int index) {
    _allController.programModel.update((val) {
      val?.days?.removeAt(index);
    });
  }
}

class Exercise {
  // Add properties for exercise details here
}
