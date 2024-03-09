//write getx controller here
// ignore_for_file: prefer_final_fields

import 'package:fitness/model/DayModel.dart';
import 'package:fitness/model/ProgramModel.dart';
import 'package:fitness/service/register_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../model/RegisterResponseModel.dart';
import '../service/login_service.dart';

class AllController extends GetxController {
  var _count = 0.obs;
  get count => _count.value;
  set count(value) => _count.value = value;
  // email and password name and lastname
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

  final GetStorage box = GetStorage();
  Rx<RegisterResponseModel> _registerResponseModel =
      RegisterResponseModel(accessToken: null, refreshToken: null).obs;
  RegisterResponseModel get registerResponseModel {
    return _registerResponseModel.value;
  }
  Rx<ProgramModel> programModel = ProgramModel(
    name: "",
    days: <Day>[],
    dayId: ""
  ).obs;
  ProgramModel get getProgramModel => programModel.value;
  set setProgramModel(value) => programModel.value = value;
  List<Day> days = <Day>[].obs;
  get getDays => days;
  set setDays(value) => days = value;


  set registerResponseModel(value) => _registerResponseModel.value = value;

  var _isValid = false.obs;

  Future<void> register() async {
    print(
        "object: ${name.value}, ${lastname.value}, ${email.value}, ${password.value}");

    await registerUserService(
      name.value,
      lastname.value,
      email.value,
      password.value,
    );
  }

  Future<void> login() async {
    print("object: ${loginEmail.value}, ${loginPassword.value}");

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
}
