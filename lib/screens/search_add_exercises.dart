// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is the code for the search and add exercises screen.
// It is used to search for exercises and add them to the model using GetX.

// Add your code here...

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/screens/ekran.dart';

import '../controller/all_controller.dart';
import '../data/convert_to_snake_case.dart';

class SearchAddExercisesScreen extends StatelessWidget {
  SearchAddExercisesScreen({
    Key? key,
  }) : super(key: key);
  final _allController = Get.put(AllController());
  var i = Get.arguments;

  @override
  Widget build(BuildContext context) {
    print('index: $i');
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
            Expanded(
              child: ListView.builder(
                itemCount: _allController.movementList.length,
                itemBuilder: (context, index) {
                  //selectable list tile for each exercise
                  // if che exercise is selected, the background color will be blue
                  // and add to the selected exercises list
                  return ListTile(
                    title: Text(_allController.movementList[index].name),
                    leading:
                        Text(_allController.movementList[index].id.toString()),
                    subtitle: Text(convertToSnakeCase(
                        _allController.movementList[index].name)),
                    trailing: Container(
                      color: Colors.grey,
                      child: Image.network(getImagePaths(convertToSnakeCase(
                          _allController.movementList[index].name))[0]),
                    ),
                    onTap: () {
                      _allController.addSelectedExercise(
                          _allController.movementList[index]);
                    },
                  );
                },
              ),
            ),
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
                              child: Text(_allController
                                  .selectedExercises[index].movement!.name),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/addExercise', arguments: i);
                  },
                  child: const Text('Save'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
