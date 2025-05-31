import 'package:fitness/controller/all_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> logoutUserService() async {
  //CLEAR ALL CONTROLLERS
  Get.find<AllController>().clear();
  //CLEAR WHOLE STORAGE
  await GetStorage().erase();
  //NAVIGATE TO LOGIN SCREEN
  Get.offAllNamed("/login");
  //SHOW SNACKBAR
  Get.snackbar(
    "User Logged out",
    "User logged out successfully",
    snackPosition: SnackPosition.BOTTOM,
  );
}
