import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/data/convert_to_snake_case.dart';
import 'package:fitness/screens/ex_screen_temp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExerciseCard extends StatelessWidget {
  int index;
  ExerciseCard({
    super.key,
    required this.index,
  });
  final _allController = Get.put(AllController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //if selected exercises movment id is equal to the current movement id then color the container
        border: Border.all(
          width: 3,
          color: _allController.selectedExercises
                  .map((element) => element.movementId)
                  .contains(_allController.movementList[index].id)
              ? Colors.blueAccent
              : Colors.transparent,
        ),

        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 1,
              offset: const Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Material(
              color: const Color.fromARGB(255, 177, 209, 242),
              child: InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onTap: () {
                  Get.toNamed('/movementDetail',
                      arguments: _allController.movementList[index].id);
                },
                child: Ink.image(
                  image: AssetImage(
                    getImagePathsLocal(convertToSnakeCase(
                        _allController.movementList[index].name))[0],
                  ),
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ),
    );
  }
}
