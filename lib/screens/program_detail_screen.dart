import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/service/get_movement.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reorderable_grid_view/reorderable_grid_view.dart';

class ProgramDetailScreen extends StatefulWidget {
  const ProgramDetailScreen({super.key});

  @override
  _ProgramDetailScreenState createState() => _ProgramDetailScreenState();
}

class _ProgramDetailScreenState extends State<ProgramDetailScreen> {
  final data = List.generate(50, (index) => index);

  final _allController = Get.put(AllController());

  //get arguments
  final index = Get.arguments;

  //edit mode
  bool editMode = false;

  @override
  Widget build(BuildContext context) {
    var program = _allController.programList[index];

    dprint(program.days?.length);
    Widget buildItem(int dayIndex, int exerciseIndex) {
      return Card(
        key: ValueKey(index),
        child: Text(
          getMovement(program
                      .days?[dayIndex].exercises?[exerciseIndex].movementId)
                  .name ??
              "",
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(program.name ?? ""),
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
            icon: editMode
                ? const Icon(
                    Icons.edit,
                    color: Colors.green,
                  )
                : const Icon(Icons.edit_off),
            onPressed: () {
              setState(() {
                editMode = !editMode;
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    //right part has raidus
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(20.0 - 1.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(program.days?[index].name ?? "",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.white,
                            )),
                  ),
                ),
                ReorderableGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: program.days?[index].exercises?.length ?? 0,
                  itemBuilder: (context, idx) => buildItem(index, idx),
                  onReorder: (oldIndex, newIndex) {
                    // if edit mode is enabled, then update the order of the items
                    if (editMode) {
                      setState(() {
                        setState(() {
                          final element = data.removeAt(oldIndex);
                          data.insert(newIndex, element);
                        });
                      });
                    } else {
                      //if edit mode is not enabled, then do nothing show a snackbar
                      Get.snackbar(
                        'Edit Mode',
                        'Please enable edit mode to reorder the items',
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 3),
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        colorText: Colors.black,
                      );
                    }
                  },
                  placeholderBuilder: (dragIndex, dropIndex, dragWidget) {
                    return Container(
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.red)),
                      child: const SizedBox(),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.6,
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: program.days?.length ?? 0,
      ),
    );
  }
}
