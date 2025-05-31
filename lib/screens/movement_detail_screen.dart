// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness/data/convert_to_snake_case.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/screens/ex_screen_temp.dart';
import 'package:fitness/screens/exercises_screen.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../service/get_movement.dart';

class MovementDetailScreen extends StatelessWidget {
  MovementDetailScreen({
    Key? key,
  }) : super(key: key);
  var i = Get.arguments;

  @override
  Widget build(BuildContext context) {
    MovementModel movement = getMovement(i);
    PageController pageController = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text(" ${movement.name} Detail "),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Slider for exercise images
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    pageSnapping: true,
                    controller: pageController,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Image.asset(
                        getImagePathsLocal(
                            convertToSnakeCase(movement.name))[index]),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              dprint("Pressed on previous image");
                              pageController.previousPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              dprint("Pressed on next image");
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            icon: const Icon(Icons.arrow_forward_ios),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Exercise name
            Center(
              child: Text(
                movement.name,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            //show the primary muscles
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //show the filters
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                                title: Text(
                              getFilters(index, movement) == ""
                                  ? "None"
                                  : getFilters(index, movement),
                            ));
                          });
                    },
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity((0.1 * (index + 1)) % 1),
                        // Colors.blue[100 * index % 900],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Text(
                              filters[index],
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              getFilters(index, movement) == "null"
                                  ? "None"
                                  : getFilters(index, movement),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            // Exercise details list
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: movement.instructions
                  .asMap()
                  .map((index, detail) => MapEntry(
                        index,
                        Column(
                          children: [
                            Card(
                              child: ListTile(
                                leading: Text(index.toString(),
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                onTap: () {
                                  print("Tapped on $index $detail");
                                },
                                title: Text(detail),
                              ),
                            ),
                            index == movement.instructions.length - 1
                                ? const SizedBox(height: 20)
                                : Container(),
                          ],
                        ),
                      ))
                  .values
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  String getFilters(int index, MovementModel movement) {
    switch (index) {
      case 0:
        return movement.category.toString();
      case 1:
        return movement.primaryMuscles.toString();
      case 2:
        return movement.equipment.toString();
      case 3:
        return movement.mechanic.toString();
      case 4:
        return movement.level.toString();
      case 5:
        return movement.force.toString();
      default:
        return "Unknown";
    }
  }

  List<String> filters = [
    "Category",
    "Primary Muscles",
    "Equipment",
    "Mechanic",
    "Level",
    "Force",
  ];
}
