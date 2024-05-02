//sync programs service

import 'dart:convert';

import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/storage/get_token.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:fitness/model/ProgramModel.dart';

import '../constants/api.dart';
import '../controller/all_controller.dart';
import '../model/SyncProgramListModel.dart';
import 'storage/programs.dart';

Future<List<ProgramModel>> syncPrograms() async {
  //get user token
  String accessToken = await getToken();

  final allController = Get.put(AllController());
  var programList = allController.programList;
  //programlist to syncprogramlistmodel
  SyncProgramListModel syncProgramListModel =
      SyncProgramListModel(programs: []);
  syncProgramListModel.programs = List.from(programList);
  //get deletedProgramIdList
  final deletedProgramIdList = await GetStorage().read('deletedProgramIdList');
  dprint("deletedProgramIdList: $deletedProgramIdList");

  //delete multiple programs with deletedProgramIdList
  if (deletedProgramIdList != null) {
    var deleteResponse = await http.post(
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer $accessToken"
        },
        Uri.parse(Api.deleteMultipleProgramsApi),
        body: jsonEncode(deletedProgramIdList ?? {}));
    dprint(deleteResponse.statusCode);
    //delete deletedProgramIdList from local storage
    GetStorage().remove('deletedProgramIdList');
  }

  //post local programs to the server
  dprint("syncProgramListModel: ${syncProgramListModel.toJson()}");
  var response = await http.post(headers: {
    "Content-Type": "application/json",
    "Authorization": "Bearer $accessToken"
  }, Uri.parse(Api.syncProgramsApi), body: syncProgramListModel.toJson());
  dprint("response: ${(response.body)}");
  dprint("status code: ${response.statusCode}");
  //TODO: handle response
  //get programs from the server
  SyncProgramListModel syncedProgramList = SyncProgramListModel.fromJson(
      response.body.isNotEmpty ? response.body : jsonEncode({"programs": []}));
  dprint(syncedProgramList.programs.length);
  if (syncedProgramList.programs.isEmpty) {
    //show snackbar
    Get.snackbar(
      'Error',
      'No programs found',
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 3),
      backgroundColor: Get.theme.colorScheme.background,
      colorText: Get.theme.colorScheme.primary,
    );
  }
  // declare to programs getx controller
  allController.programList.value = syncedProgramList.programs;

  //save programs to the local storage
  await ProgramService().updateStoredProgramList();

  return [];
}
