import 'package:fitness/data/convert_to_snake_case.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../data/load_json.dart';

class Ekran extends StatefulWidget {
  const Ekran({super.key});

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  final _allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All Exercises'),
          backgroundColor: Theme.of(context).colorScheme.primary,
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
                () => ListView.builder(
                    itemCount: _allController.movementList.length,
                    itemBuilder: (context, index) {
                      dprint(getImagePathsLocal(convertToSnakeCase(
                          _allController.movementList[index].name))[0]);
                      return ListTile(
                          title: Text(_allController.movementList[index].name),

                          // subtitle: Text(exercisesList[index].level),
                          leading: Text(
                              _allController.movementList[index].id.toString()),
                          subtitle: Text(convertToSnakeCase(
                              _allController.movementList[index].name)),
                          trailing:
                              //yuklenmediyse gri bir container

                              Container(
                                  width: 50,
                                  color: Colors.grey,
                                  child: Image.asset(
                                    // 'assets/exercises/0.jpg',
                                    getImagePathsLocal(convertToSnakeCase(
                                        _allController
                                            .movementList[index].name))[0],
                                  )));
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
