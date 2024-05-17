// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/MovementModel.dart';
import '../service/filter_list.dart';

List<String> categories = [
  'strength',
  'olympic weightlifting',
  'powerlifting',
  'strongman',
  'plyometrics',
  'stretching',
  'cardio',
];

List<String> primaryMuscleGroups = [
  'shoulders',
  'traps',
  'abductors',
  'glutes',
  'middle back',
  'triceps',
  'chest',
  'lower back',
  'quadriceps',
  'calves',
  'lats',
  'biceps',
  'adductors',
  'forearms',
  'abdominals',
  'neck',
  'hamstrings',
];

// List<String> secondaryMuscleGroups = [
//   'shoulders',
//   'traps',
//   'abductors',
//   'glutes',
//   'middle back',
//   'triceps',
//   'chest',
//   'lower back',
//   'quadriceps',
//   'calves',
//   'lats',
//   'biceps',
//   'adductors',
//   'forearms',
//   'abdominals',
//   'neck',
//   'hamstrings',
// ];

List<String> equipmentRequirements = [
  'foam roll',
  'cable',
  'medicine ball',
  'body only',
  'None',
  'barbell',
  'e-z curl bar',
  'other',
  'dumbbell',
  'exercise ball',
  'machine',
  'kettlebells',
  'bands',
];

List<String> mechanicalTypes = [
  'isolation',
  'compound',
  'None',
];

List<String> difficultyLevels = [
  'beginner',
  'intermediate',
  'expert',
];

List<String> strengthTypes = [
  'push',
  'pull',
  'static',
  'None',
];

List<List<String>> filterOptions = [
  categories,
  primaryMuscleGroups,
  equipmentRequirements,
  mechanicalTypes,
  difficultyLevels,
  strengthTypes,
];
List<String> filterOptionsNames = [
  'Categories',
  'Primary Muscle Groups',
  'Equipment Requirements',
  'Mechanical Types',
  'Difficulty Levels',
  'Force',
];

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});
  final _allController = Get.put(AllController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
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

              filterList();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: filterOptions.length,
                itemBuilder: (context, index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Obx(
                              () => Text(
                                "${filterOptionsNames[index]}"
                                " (${getLengthOfSelectedFilters(filterOptionsNames[index])})",
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Spacer(),
                            Obx(
                              () => IconButton(
                                icon: _allController
                                        .toggleSelectedCategories[index]
                                    ? const Icon(Icons.arrow_drop_up)
                                    : const Icon(Icons.arrow_drop_down),
                                onPressed: () {
                                  //open filter
                                  toggleFilter(filterOptionsNames[index]);
                                },
                              ),
                            ),
                            //clear button
                            IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                //clear filter
                                clearFilter(filterOptionsNames[index]);
                                filterList();
                              },
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                        Obx(
                          () => _allController.toggleSelectedCategories[index]
                              ? GridView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          childAspectRatio: 2),
                                  itemCount: filterOptions[index].length,
                                  itemBuilder: (context, idx) {
                                    return GestureDetector(
                                      //show hint
                                      onLongPress: () => showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          title:
                                              Text(filterOptions[index][idx]),
                                        ),
                                      ),
                                      onTap: () {
                                        // select category
                                        selectFilter(filterOptionsNames[index],
                                            filterOptions[index][idx]);
                                        filterList();
                                      },
                                      child: Obx(
                                        () => Container(
                                          margin: const EdgeInsets.all(10),
                                          padding: const EdgeInsets.all(10),
                                          decoration: isSelected(
                                            filterOptionsNames[index],
                                            filterOptions[index][idx],
                                          )
                                              ? BoxDecoration(
                                                  color: Colors.blue[100],
                                                  border: Border.all(
                                                      color: Colors.blue,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                )
                                              : BoxDecoration(
                                                  border:
                                                      // category selected logic

                                                      Border.all(
                                                          color: Colors.black),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                    filterOptions[index][idx],
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  })
                              : Container(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          //height: 50,
                          minimumSize: const Size(220, 50),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
                          disabledForegroundColor:
                              Colors.grey.withOpacity(0.38),
                        ),
                        onPressed: () {
                          //pop filter screen
                          _allController.filteredMovementList.value =
                              List.from(_allController.filteredList);

                          Get.back();
                        },
                        child: Obx(
                            //if no filter selected show all movement

                            () => Text(
                                  "Apply Filters ${getAllFilterLength() == 0 ? 'All' : _allController.filteredList.length}",
                                )),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  bool isSelected(
    String filterOptionsNames,
    String filterOptions,
  ) {
    if (filterOptionsNames == 'Categories') {
      return _allController.selectedCategories.contains(filterOptions);
    } else if (filterOptionsNames == 'Primary Muscle Groups') {
      return _allController.selectedPrimaryMuscleGroups.contains(filterOptions);
    } else if (filterOptionsNames == 'Equipment Requirements') {
      return _allController.selectedEquipmentRequirements
          .contains(filterOptions);
    } else if (filterOptionsNames == 'Mechanical Types') {
      return _allController.selectedMechanicalTypes.contains(filterOptions);
    } else if (filterOptionsNames == 'Difficulty Levels') {
      return _allController.selectedDifficultyLevels.contains(filterOptions);
    } else if (filterOptionsNames == 'Force') {
      return _allController.selectedStrengthTypes.contains(filterOptions);
    }
    return false;
  }

  void selectFilter(String filterOptionsNam, String filterOption) {
    //select filter from allController

    if (filterOptionsNam == 'Categories') {
      if (_allController.selectedCategories.contains(filterOption)) {
        _allController.selectedCategories.remove(filterOption);
      } else {
        _allController.selectedCategories.add(filterOption);
      }
    } else if (filterOptionsNam == 'Primary Muscle Groups') {
      if (_allController.selectedPrimaryMuscleGroups.contains(filterOption)) {
        _allController.selectedPrimaryMuscleGroups.remove(filterOption);
      } else {
        _allController.selectedPrimaryMuscleGroups.add(filterOption);
      }
    } else if (filterOptionsNam == 'Equipment Requirements') {
      if (_allController.selectedEquipmentRequirements.contains(filterOption)) {
        _allController.selectedEquipmentRequirements.remove(filterOption);
      } else {
        _allController.selectedEquipmentRequirements.add(filterOption);
      }
    } else if (filterOptionsNam == 'Mechanical Types') {
      if (_allController.selectedMechanicalTypes.contains(filterOption)) {
        _allController.selectedMechanicalTypes.remove(filterOption);
      } else {
        _allController.selectedMechanicalTypes.add(filterOption);
      }
    } else if (filterOptionsNam == 'Difficulty Levels') {
      if (_allController.selectedDifficultyLevels.contains(filterOption)) {
        _allController.selectedDifficultyLevels.remove(filterOption);
      } else {
        _allController.selectedDifficultyLevels.add(filterOption);
      }
    } else if (filterOptionsNam == 'Force') {
      if (_allController.selectedStrengthTypes.contains(filterOption)) {
        _allController.selectedStrengthTypes.remove(filterOption);
      } else {
        _allController.selectedStrengthTypes.add(filterOption);
      }
    }
  }

  void clearFilter(String filterOptionsNam) {
    //clear filter from allController
    if (filterOptionsNam == 'Categories') {
      _allController.selectedCategories.clear();
    } else if (filterOptionsNam == 'Primary Muscle Groups') {
      _allController.selectedPrimaryMuscleGroups.clear();
    } else if (filterOptionsNam == 'Equipment Requirements') {
      _allController.selectedEquipmentRequirements.clear();
    } else if (filterOptionsNam == 'Mechanical Types') {
      _allController.selectedMechanicalTypes.clear();
    } else if (filterOptionsNam == 'Difficulty Levels') {
      _allController.selectedDifficultyLevels.clear();
    } else if (filterOptionsNam == 'Force') {
      _allController.selectedStrengthTypes.clear();
    }
  }

  void toggleFilter(String filterOptionsNam) {
    //toggle filter from allController
    // _allController.toggleSelectedCategories has 6 bool

    if (filterOptionsNam == 'Categories') {
      _allController.toggleSelectedCategories[0] =
          !_allController.toggleSelectedCategories[0];
    } else if (filterOptionsNam == 'Primary Muscle Groups') {
      _allController.toggleSelectedCategories[1] =
          !_allController.toggleSelectedCategories[1];
    } else if (filterOptionsNam == 'Equipment Requirements') {
      _allController.toggleSelectedCategories[2] =
          !_allController.toggleSelectedCategories[2];
    } else if (filterOptionsNam == 'Mechanical Types') {
      _allController.toggleSelectedCategories[3] =
          !_allController.toggleSelectedCategories[3];
    } else if (filterOptionsNam == 'Difficulty Levels') {
      _allController.toggleSelectedCategories[4] =
          !_allController.toggleSelectedCategories[4];
    } else if (filterOptionsNam == 'Force') {
      _allController.toggleSelectedCategories[5] =
          !_allController.toggleSelectedCategories[5];
    }
  }

  getLengthOfSelectedFilters(String filterOptionsNam) {
    if (filterOptionsNam == 'Categories') {
      return _allController.selectedCategories.length;
    } else if (filterOptionsNam == 'Primary Muscle Groups') {
      return _allController.selectedPrimaryMuscleGroups.length;
    } else if (filterOptionsNam == 'Equipment Requirements') {
      return _allController.selectedEquipmentRequirements.length;
    } else if (filterOptionsNam == 'Mechanical Types') {
      return _allController.selectedMechanicalTypes.length;
    } else if (filterOptionsNam == 'Difficulty Levels') {
      return _allController.selectedDifficultyLevels.length;
    } else if (filterOptionsNam == 'Force') {
      return _allController.selectedStrengthTypes.length;
    }
    return 0;
  }

  getAllFilterLength() {
    return _allController.selectedCategories.length +
        _allController.selectedPrimaryMuscleGroups.length +
        _allController.selectedEquipmentRequirements.length +
        _allController.selectedMechanicalTypes.length +
        _allController.selectedDifficultyLevels.length +
        _allController.selectedStrengthTypes.length;
  }
}

filterList() {
  final allController = Get.put(AllController());
  //TODO: su anda sadece filter optiona göre bir filtreleme mevcut

  //show all selected filters

  List<MovementModel> a = List.from(allController.movementList.where(
    (movement) {
      if (allController.selectedCategories.isNotEmpty) {
        if (!allController.selectedCategories.contains(movement.category)) {
          return false;
        }
      }
      if (allController.selectedPrimaryMuscleGroups.isNotEmpty) {
        //selectedPrimaryMuscle is String List
        if (!allController.selectedPrimaryMuscleGroups
            .any((pM) => movement.primaryMuscles.contains(pM))) {
          return false;
        }
      }
      if (allController.selectedEquipmentRequirements.isNotEmpty) {
        if (!allController.selectedEquipmentRequirements
            .contains(movement.equipment ?? "None")) {
          return false;
        }
      }

      if (allController.selectedMechanicalTypes.isNotEmpty) {
        if (!allController.selectedMechanicalTypes
            .contains(movement.mechanic ?? "None")) {
          return false;
        }
      }
      if (allController.selectedDifficultyLevels.isNotEmpty) {
        if (!allController.selectedDifficultyLevels.contains(movement.level)) {
          return false;
        }
      }
      if (allController.selectedStrengthTypes.isNotEmpty) {
        if (!allController.selectedStrengthTypes
            .contains(movement.force ?? "None")) {
          return false;
        }
      }
      return true;
    },
  ).toList());

  allController.filteredList.value = a;
  allController.setLastFilteredList(a);
  dprint(
      "filtered list : ${allController.filteredList.map((element) => element.primaryMuscles)}");
  dprint("filtered list length: ${allController.filteredList.length}");
  dprint(
      "filtered list : ${allController.filteredList.map((element) => element.id)}");
  return a;
}
