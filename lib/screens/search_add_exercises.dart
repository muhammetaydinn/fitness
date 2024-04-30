// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is the code for the search and add exercises screen.
// It is used to search for exercises and add them to the model using GetX.

// Add your code here...

import 'package:fitness/service/filter_list.dart';
import 'package:fitness/service/get_movement.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/screens/exercises_screen.dart';

import '../controller/all_controller.dart';
import '../data/convert_to_snake_case.dart';
import '../model/ExerciseModel.dart';
import '../service/other/dprint.dart';

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
          () => Text('${_allController.movementList.length} exercises'),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Search: Dumbbell Bench Press',
                  border: OutlineInputBorder(),
                ),
                controller: searchController,
                cursorColor: Colors.black,
                cursorWidth: 5,
                style: const TextStyle(
                  color: Colors.black,
                  decorationColor: Colors.black,
                ),
                onChanged: (value) {
                  filterList(value);
                },
              ),
            ),
            // Search bar

            Expanded(
                child: Obx(
              () => ListView.builder(
                itemCount: _allController.filteredMovementList.length,
                itemBuilder: (context, index) {
                  //selectable list tile for each exercise
                  // if che exercise is selected, the background color will be blue
                  // and add to the selected exercises list
                  return ListTile(
                    title:
                        Text(_allController.filteredMovementList[index].name),
                    leading: Text(_allController.filteredMovementList[index].id
                        .toString()),
                    subtitle: Text(convertToSnakeCase(
                        _allController.filteredMovementList[index].name)),
                    trailing: Container(
                        color: Colors.grey,
                        child: Image.asset(getImagePathsLocal(
                            convertToSnakeCase(_allController
                                .filteredMovementList[index].name))[0])),
                    onTap: () {
                      _allController.addSelectedExercise(
                          _allController.filteredMovementList[index]);
                    },
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
                    color: Colors.grey,
                    child: Obx(
                      () => ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _allController.selectedExercises.length ?? 0,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.blue,
                              child: Text(getMovement(_allController
                                      .selectedExercises[index].movementId!)
                                  .name),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
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
                    _allController.dayNameController.value.text = '';
                    _allController.selectedExercises.clear();
                  },
                  child: const Text('Clear'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  AlertDialog newMethod(BuildContext context) {
    return AlertDialog(
      title: const Text('Filter'),
      content: SizedBox(
        width: double.maxFinite,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text(
            'Filtreleme seçenekleri:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text('Ekipman'),
          CheckboxListTile(
            title: const Text('Barbell'),
            value: false,
            onChanged: (value) {
              // Barbell seçildiğinde yapılacak işlemler
            },
          ),
          CheckboxListTile(
            title: const Text('Dumbbell'),
            value: false,
            onChanged: (value) {
              // Dumbbell seçildiğinde yapılacak işlemler
            },
          ),
          const Text('Kas Grubu'),
          CheckboxListTile(
            title: const Text('Göğüs'),
            value: false,
            onChanged: (value) {
              // Göğüs seçildiğinde yapılacak işlemler
            },
          ),
          CheckboxListTile(
            title: const Text('Sırt'),
            value: false,
            onChanged: (value) {
              // Sırt seçildiğinde yapılacak işlemler
            },
          ),
          const Text('Seviye'),
          RadioListTile(
            title: const Text('Başlangıç'),
            value: 'beginner',
            groupValue: null,
            onChanged: (value) {
              // Başlangıç seviyesi seçildiğinde yapılacak işlemler
            },
          ),
          RadioListTile(
            title: const Text('Orta'),
            value: 'intermediate',
            groupValue: null,
            onChanged: (value) {
              // Orta seviye seçildiğinde yapılacak işlemler
            },
          ),
          RadioListTile(
            title: const Text('İleri'),
            value: 'advanced',
            groupValue: null,
            onChanged: (value) {
              // İleri seviye seçildiğinde yapılacak işlemler
            },
          ),
        ]),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Kapat'),
        ),
        TextButton(
          onPressed: () {
            // Filtreleme işlemleri
          },
          child: const Text('Filtrele'),
        ),
      ],
    );
  }
}
