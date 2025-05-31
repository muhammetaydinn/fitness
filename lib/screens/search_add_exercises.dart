// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is the code for the search and add exercises screen.
// It is used to search for exercises and add them to the model using GetX.

// Add your code here...

import 'package:fitness/screens/ex_screen_temp.dart';
import 'package:fitness/screens/filter_screen.dart';
import 'package:fitness/service/filter_list.dart';
import 'package:fitness/service/get_movement.dart';
import 'package:fitness/widgets/cpv1.dart';
import 'package:fitness/widgets/cpv2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/screens/exercises_screen.dart';

import '../controller/all_controller.dart';
import '../data/convert_to_snake_case.dart';
import '../model/ExerciseModel.dart';
import '../service/other/dprint.dart';
import '../widgets/body_part_cp.dart';

class SearchAddExercisesScreen extends StatelessWidget {
  SearchAddExercisesScreen({
    Key? key,
  }) : super(key: key);
  final _allController = Get.put(AllController());
  var i = Get.arguments;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    dprint('index: $i');
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text('${_allController.lastFilteredList.length} exercises'),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            label: const Text('Clear All'),
            icon: const Icon(Icons.clear_all),
            onPressed: () {
              //clear all filters
              _allController.selectedCategories.clear();
              _allController.selectedPrimaryMuscleGroups.clear();
              _allController.selectedEquipmentRequirements.clear();
              _allController.selectedMechanicalTypes.clear();
              _allController.selectedDifficultyLevels.clear();
              _allController.selectedStrengthTypes.clear();

              //toggle all filters

              _allController.lastFilteredList.value =
                  List.from(_allController.movementList);
              _allController.filteredMovementList.value =
                  List.from(_allController.movementList);
            },
          ),
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              var res = Get.toNamed('/filter');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            //Add this CustomPaint widget to the Widget Tre
            // EN SON EKLENEBİLECEK FEATURE

            // SizedBox(
            //     width: 300,
            //     height: 450,
            //     child: //Add this CustomPaint widget to the Widget Tree
            //         Obx(
            //       () => _allController.selectedExercises.isEmpty
            //           ? CustomPaint(
            //               size: Size(
            //                   MediaQuery.of(context).size.width,
            //                   (MediaQuery.of(context).size.width *
            //                           1.1319444444444444)
            //                       .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            //               painter: RPSCustomPainter(),
            //             )
            //           : CustomPaint(
            //               size: Size(
            //                   MediaQuery.of(context).size.width,
            //                   (MediaQuery.of(context).size.width *
            //                           1.1319444444444444)
            //                       .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            //               painter: RPSCustomPainter(),
            //             ),
            //     )),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search: Dumbbell Bench Press',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                  ),
                  controller: searchController,
                  cursorColor: Colors.black,
                  cursorWidth: 5,
                  style: const TextStyle(
                    color: Colors.black,
                    decorationColor: Colors.black,
                  ),
                  onChanged: (value) {
                    filterMovementList(value);
                  },
                ),
              ),
            ),
            // Search bar

            Expanded(
                child: Obx(
              () => ListView.builder(
                itemCount: _allController.lastFilteredList.length,
                itemBuilder: (context, index) {
                  //selectable list tile for each exercise
                  // if che exercise is selected, the background color will be blue
                  // and add to the selected exercises list
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: Obx(
                      () => ListTile(
                        minVerticalPadding: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: _allController.selectedExercises
                                        .map((element) => element.movementId)
                                        .contains(_allController
                                            .lastFilteredList[index].id)
                                    ? Colors.blue
                                    : Colors.grey,
                                width: 2)),
                        title: Text(
                          _allController.lastFilteredList[index].name,
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold),
                        ),
                        subtitle: Row(
                          children: [
                            Text(getMovement(
                                    _allController.lastFilteredList[index].id!)
                                .primaryMuscles[0]),
                          ],
                        ),
                        trailing: Container(
                            color: Colors.grey,
                            child: Image.asset(
                              getImagePathsLocal(convertToSnakeCase(
                                  _allController
                                      .lastFilteredList[index].name))[0],
                              fit: BoxFit.cover,
                            )),
                        onTap: () {
                          _allController.addSelectedExercise(
                              _allController.lastFilteredList[index]);
                        },
                      ),
                    ),
                  );
                },
              ),
            )),
            // Selected exercises list
            //Fix that container
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Obx(
                      () => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _allController.selectedExercises.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              width: 100,
                              height: 50,
                              color: Colors.blue,
                              child: Column(
                                children: [
                                  //shorten the text
                                  Text(
                                    getMovement(_allController
                                            .selectedExercises[index]
                                            .movementId!)
                                        .name,
                                    style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                      child: Image.asset(getImagePathsLocal(
                                          convertToSnakeCase(getMovement(
                                                  _allController
                                                      .selectedExercises[index]
                                                      .movementId!)
                                              .name))[0])),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                    height: 100,
                    color: Theme.of(context).colorScheme.secondary,
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            dprint(
                                'selected exercises: ${_allController.selectedExercises.length}');
                            List<ExcerciseModel> temp =
                                List.from(_allController.selectedExercises);
                            _allController.selectedExercises.clear();

                            Get.back(result: temp);
                            //clear the selected exercises list
                          },
                          child: const Text('Save'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            //show dialog to clear the selected exercises list
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Clear'),
                                  content: const Text(
                                      'Are you sure you want to clear the selected exercises?'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('No'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        _allController.selectedExercises
                                            .clear();
                                        _allController
                                            .dayNameController.value.text = '';
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Text('Clear'),
                          //
                        ),
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
