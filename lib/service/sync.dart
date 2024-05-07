import 'package:dio/dio.dart';
import 'package:fitness/service/dio_config.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/snackbar_error_exception.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../constants/api.dart';
import '../controller/all_controller.dart';
import '../model/SyncProgramListModel.dart';
import 'storage/programs.dart';

Future<void> syncPrograms() async {
  Dio dio = DioConfig.getDio(baseUrl: Api.baseUrl);
  //get user token

  final allController = Get.put(AllController());
  var programList = allController.programList;
  //programlist to syncprogramlistmodel
  SyncProgramListModel syncProgramListModel =
      SyncProgramListModel(programs: []);
  syncProgramListModel.programs = List.from(programList);
  //get deletedProgramIdList
  List<dynamic> temp = GetStorage().read('deletedProgramIdList') ?? [];
  List<int> deletedProgramIdList = temp.map((e) => e as int).toList();

  //deleted but not synced programs so delete those programs
  await deletePrograms(deletedProgramIdList, dio);
  //post programs to the server
  await postPrograms(syncProgramListModel, dio);
}

Future<void> deletePrograms(List<int> deletedProgramIdList, Dio dio) async {
  dprint("deletedProgramIdList: $deletedProgramIdList");
  //delete multiple programs with deletedProgramIdList
  if (deletedProgramIdList.isNotEmpty) {
    dprint("deletedProgramIdList: $deletedProgramIdList");
    try {
      var deleteResponse = await dio.post(
        Api.deleteMultipleProgramsApi,
        data: deletedProgramIdList,
      );
      dprint(deleteResponse.statusCode);
      // Handle the response
      if (deleteResponse.statusCode! >= 200 &&
          deleteResponse.statusCode! < 300) {
        //delete deletedProgramIdList from local storage
      await  GetStorage().remove('deletedProgramIdList');
      } else {
        snackBarErrorException(deleteResponse.data);
      }
    } catch (e) {
      snackBarErrorException(e);
    }
  } else {
    dprint("deletedProgramIdList is null OR accessToken is null");
  }
}

Future<void> postPrograms(
    SyncProgramListModel syncProgramListModel, Dio dio) async {
  final allController = Get.put(AllController());
  try {
    var response = await dio.post(
      Api.syncProgramsApi,
      data: syncProgramListModel.toJson(),
    );
    // Handle the response
    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      SyncProgramListModel syncedProgramList = SyncProgramListModel.fromMap(
          response.data.isNotEmpty ? response.data : {"programs": []});
      allController.programList.value = syncedProgramList.programs;
      await ProgramService().updateStoredProgramList();
      if (syncedProgramList.programs.isEmpty) {
        Get.snackbar(
          'No programs found',
          'Create first your program.',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
          backgroundColor: Get.theme.colorScheme.background,
          colorText: Get.theme.colorScheme.primary,
        );
      }
    } else {
      snackBarErrorException(response.data);
    }
  } catch (e) {
    snackBarErrorException(e);
  }
}
