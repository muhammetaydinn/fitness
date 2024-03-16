import 'package:fitness/model/DayModel.dart';
import 'package:fitness/model/MovementModel.dart';
import 'package:fitness/model/ProgramModel.dart';
import 'package:fitness/service/register_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

import '../model/ExerciseModel.dart';
import '../model/RegisterResponseModel.dart';
import '../service/other/dprint.dart';
import '../service/login_service.dart';

class AllController extends GetxController {
  var name = ''.obs;
  get getName => name.value;
  set setName(value) => name.value = value;

  var lastname = ''.obs;
  get getLastname => lastname.value;
  set setLastname(value) => lastname.value = value;

  var email = ''.obs;
  get getEmail => email.value;
  set setEmail(value) => email.value = value;

  var password = ''.obs;
  get getPassword => password.value;
  set setPassword(value) => password.value = value;

  var loginEmail = ''.obs;
  get getLoginEmail => email.value;
  set setLoginEmail(value) => email.value = value;

  var loginPassword = ''.obs;
  get getLoginPassword => password.value;
  set setLoginPassword(value) => password.value = value;

  var isLoggedin = false.obs;
  get getIsLoggedin => isLoggedin.value;
  set setIsLoggedin(value) => isLoggedin.value = value;

  var programName = ''.obs;
  get getProgramName => programName.value;
  set setProgramName(value) => programName.value = value;

  var dayNumber = "".obs;
  get getDayNumber => dayNumber.value;
  set setDayNumber(value) => dayNumber.value = value;

  //selected exercises list
  var selectedExercises = <ExcerciseModel>[].obs;
  get getSelectedExercises => selectedExercises;
  set setSelectedExercises(value) => selectedExercises = value;

  // var dayName = ''.obs;
  // get getDayName => dayName.value;
  // set setDayName(value) => dayName.value = value;
  // final programNameController = TextEditingController().obs;
  // TextEditingController get getProgramNameController =>
  //     programNameController.value;
  // set setProgramNameController(value) => programNameController.value = value;

  // final dayNumberController = TextEditingController().obs;
  // TextEditingController get getTextController => dayNumberController.value;
  // set setTextController(value) => dayNumberController.value = value;

  final dayNameController = TextEditingController().obs;
  TextEditingController get getDayNameController => dayNameController.value;
  set setDayNameController(value) => dayNameController.value = value;

  final GetStorage box = GetStorage();

  final Rx<RegisterResponseModel> _registerResponseModel =
      RegisterResponseModel(accessToken: null, refreshToken: null).obs;
  RegisterResponseModel get registerResponseModel {
    return _registerResponseModel.value;
  }

  Rx<ProgramModel> programModel =
      ProgramModel(name: "", days: <Day>[], dayId: "").obs;
  ProgramModel get getProgramModel => programModel.value;
  set setProgramModel(value) => programModel.value = value;
  List<Day> days = <Day>[].obs;
  get getDays => days;
  set setDays(value) => days = value;

  set registerResponseModel(value) => _registerResponseModel.value = value;

  final _isValid = false.obs;

  RxList<MovementModel> movementList = <MovementModel>[].obs;
  void setMovementList(List<MovementModel> value) {
    movementList.assignAll(value);
  }

  RxList<ProgramModel> programList = <ProgramModel>[].obs;
  void setProgramList(List<ProgramModel> value) {
    programList.assignAll(value);
  }

  get getProgramList => programList;

  //ADD PROGRAM TO PROGRAM LIST
  void addProgramToList(ProgramModel program) {
    programList.add(program.copyWith());
  }

  Future<void> register() async {
    dprint(
        "object: ${name.value}, ${lastname.value}, ${email.value}, ${password.value}");

    await registerUserService(
      name.value,
      lastname.value,
      email.value,
      password.value,
    );
  }

  Future<void> login() async {
    dprint("object: ${loginEmail.value}, ${loginPassword.value}");

    var login = await loginUserService(
      loginEmail.value,
      loginPassword.value,
    );
    if (login == "success") {
      //set isloggedin to true
      // navigate to home screen and clean the stack and show snackbar
      isLoggedin.value = true;
      Get.offAllNamed("/main");
      Get.snackbar(
        "User Logged in",
        "User logged in successfully",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void addSelectedExercise(MovementModel movementModel) {
    //  add selected exercises list to our allcontroller days i exercises list
    selectedExercises.add(
      ExcerciseModel(
        movement: movementModel,
        movementId: movementModel.id,
        reps: 0,
        weightDuration: 0,
        set: 0,
      ),
    );
  }
}
