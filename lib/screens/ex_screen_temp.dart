import 'package:fitness/data/convert_to_snake_case.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/screens/filter_screen.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/widgets/exercise_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';

import '../controller/all_controller.dart';
import '../data/load_json.dart';

class ExerciseScreen extends StatefulWidget {
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  final _allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(() => Text(
              'All Exercises ${_allController.filteredMovementList.length.toString()}')),
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
                _allController.filteredMovementList.value =
                    List.from(_allController.movementList.value);
              },
            ),
            IconButton(
              icon: const Icon(Icons.filter_alt),
              onPressed: () {
                Get.toNamed('/filter');
              },
            ),
          ],
        ),
        body: Center(
          child:
              // const Text(
              //   'My Programs',
              //   style: TextStyle(
              //     fontSize: 30,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // Image.network(getImagePaths("Ab_Crunch_Machine")[0]), // 0.jpg
              // Image.network(getImagePaths("Ab_Crunch_Machine")[1]), // 1.jpg
              Column(
            children: [
              Expanded(
                  child: Obx(
                () => GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: _allController.filteredMovementList.length,
                    itemBuilder: (context, index) {
                      return Obx(
                        () => ExerciseCard(
                          key: ValueKey(const Uuid().v4()),
                          index:
                              _allController.filteredMovementList[index].id! -
                                  1,
                        ),
                      );

                      // Image.network(getImagePaths(
                    }),
              )),
            ],
          ),
          //SHOW ALL TEXTS IN THE JSON FILE
        ));
  }
}

// List<String> getImagePaths(String exercise) {
//   return [
//     'assets/res/$exercise-0.jpg',
//     'assets/res/$exercise-1.jpg',
//   ];
// }

List<String> getImagePathsLocal(String exercise) {
  // C:\Users\47eyu\Desktop\Muhammet\fitness\assets\exercises\3_4_Sit-Up\images\0.jpg
  // assets\exercises\3_4_Sit-Up\images\0.jpg
  return [
    'assets/res/$exercise-0.jpg',
    'assets/res/$exercise-1.jpg',
  ];
}
