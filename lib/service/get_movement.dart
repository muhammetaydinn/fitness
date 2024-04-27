import 'package:fitness/controller/all_controller.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:get/get.dart';

MovementModel getMovement(int? id) {
  final allController = Get.put(AllController());

  return allController.movementList.firstWhere((element) => element.id == id);
}
