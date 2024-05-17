//filter exerices list and return the list of filtered exercises
import 'package:fitness/model/MovementModel.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';

void filterMovementList(String name) {
  final allController = Get.put(AllController());

  List<MovementModel> filteredList = allController.filteredMovementList
      .where(
          (element) => element.name.toLowerCase().contains(name.toLowerCase()))
      .toList();
  // update filteredMovementList
  allController.setLastFilteredList(filteredList);
}
