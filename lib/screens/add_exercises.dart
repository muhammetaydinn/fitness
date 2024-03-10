import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../controller/all_controller.dart';
import '../data/convert_to_snake_case.dart';
import '../model/DayModel.dart';
import '../model/ExerciseModel.dart';
import '../model/ProgramModel.dart';
import 'ekran.dart';

class AddExercisesScreen extends StatefulWidget {
  const AddExercisesScreen({super.key});

  @override
  _AddExercisesScreenState createState() => _AddExercisesScreenState();
}

class _AddExercisesScreenState extends State<AddExercisesScreen> {
  final _allController = Get.put(AllController());

  var programNameController = TextEditingController();
  var dayNumberController = TextEditingController();

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
              Column(
                children: [
                  tf1(),
                  tf2(),
                  btn1(),
                ],
              ),
              name(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: Obx(
                () => lvb(),
              )),
            ],
          ),
        ),
        floatingActionButton: Obx(
          () => _allController.programModel.value.days?.isNotEmpty ?? false
              ? FloatingActionButton.extended(
                  onPressed: () {
                    addDayToProgram();
                  },
                  label: const Text('Add Day'),
                )
              : Container(),
        ));
  }

  ListView lvb() {
    return ListView.builder(
      itemCount: _allController.programModel.value.days?.length ?? 0,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              row1(index, context),
              const SizedBox(
                height: 10,
              ),
              _allController.programModel.value.days?[index].exercises
                          ?.isNotEmpty ??
                      false
                  ? col1(index)
                  : Container(),
              add(context, index),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }

  IconButton add(BuildContext context, int index) {
    return IconButton(
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
        onPressed: () async {
          var result =
              await Get.toNamed('/searchAddExercises', arguments: index);
          if (result != null) {
            print('result: $result');
            List<ExcerciseModel> exercises = result as List<ExcerciseModel>;
            _allController.programModel.update((val) {
              for (var i = 0; i < exercises.length; i++) {
                val?.days?[index].exercises?.add(exercises[i]);
              }
            });
          }
        },
        icon: const Icon(
          Icons.add_outlined,
          size: 50,
          color: Colors.white,
        ));
  }

  GridView col1(int index) {
    return GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount:
            _allController.programModel.value.days?[index].exercises?.length ??
                0,
        itemBuilder: (context, iN) => Obx(
              () => Container(
                height: 25,
                color: Colors.grey,
                child: Image.network(getImagePaths(convertToSnakeCase(
                    _allController.programModel.value.days?[index]
                            .exercises![iN].movement?.name ??
                        ''))[0]),
              ),
            ));
  }

  Row row1(int index, BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Colors.indigoAccent),
          padding: const EdgeInsets.all(8),
          child: Text(
            _allController.programModel.value.days?[index].name ?? '',
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
                      controller: _allController.dayNameController.value,
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
                          print(
                              "day name: ${_allController.programModel.value.days?[index].name} changed to ${_allController.dayNameController.value.text}");
                          _allController.programModel.update((val) {
                            val?.days?[index].name =
                                _allController.dayNameController.value.text;
                          });
                          print(
                              "day name: ${_allController.programModel.value.days?[index].name} ");

                          _allController.dayNameController.value.text = '';

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
            _deleteExercise(index);
          },
        ),
      ],
    );
  }

  Row name() {
    return Row(
      children: [
        Obx(
          () => _allController.programModel.value.days?.isNotEmpty ?? false
              ? Container(
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
    );
  }

  Obx btn1() {
    return Obx(
      () => ElevatedButton(
        onPressed: _allController.programName.value.isNotEmpty &&
                _allController.dayNumber.value.isNotEmpty
            ? () {
                var uuid = const Uuid();
                createProgram(_allController.programName.value,
                    int.parse(_allController.dayNumber.value), uuid.v4());

                _allController.programName.value = '';
                programNameController.clear();
                _allController.dayNumber.value = '';
                dayNumberController.clear();
              }
            : null,
        child: const Text('Create Program'),
      ),
    );
  }

  TextField tf2() {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      controller: dayNumberController,
      onChanged: (value) {
        _allController.dayNumber.value = value;
      },
      decoration: const InputDecoration(
        labelText: 'Day Number',
      ),
    );
  }

  TextField tf1() {
    return TextField(
      controller: programNameController,
      onChanged: (value) {
        _allController.programName.value = value;
      },
      decoration: const InputDecoration(
        labelText: 'Program Name',
      ),
    );
  }

  void createProgram(
    String name,
    int numberDays,
    String dayId,
  ) {
    List<Day> days = [];
    for (var i = 0; i < numberDays; i++) {
      days.add(Day(name: 'Day ${i + 1}', exercises: []));
    }
    _allController.programModel.value.days = days;
    _allController.programModel.value.name = name;

    _allController.setProgramModel = ProgramModel(
      name: _allController.programModel.value.name,
      days: _allController.programModel.value.days,
      dayId: dayId,
    );
  }

  void addDayToProgram() {
    _allController.programModel.update((val) {
      val?.days?.add(Day(name: 'Day ${val.days!.length + 1}', exercises: []));
    });
  }

  void _deleteExercise(int index) {
    _allController.programModel.update((val) {
      val?.days?.removeAt(index);
    });
  }
}
