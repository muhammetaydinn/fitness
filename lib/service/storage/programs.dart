import 'dart:convert';

import 'package:fitness/model/SyncProgramListModel.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../controller/all_controller.dart';
import '../../model/ProgramModel.dart';
import '../other/dprint.dart';

class ProgramService {
  //TODO: PROGRAMMODELİN LİSTESİ SEKLİNDE KAYDET BİDAHAKİNE

  final box = GetStorage();
  final _allController = Get.put(AllController());

  // ProgramModel'i kaydet
  Future<void> updateStoredProgramList() async {
    dprint('programList: ${_allController.programList.toJson()}');
    await box.write('programList', _allController.programList.toJson());
  }

  // Kaydedilmiş ProgramModel'i getir
  List<ProgramModel> getProgram() {
    final data = box.read('programList');
    if (data != null) {
      dprint('data: $data');
      dprint('data type: ${data.runtimeType}');
      // return (data as List<ProgramModel>).map((e) => (e)).toList();
      return (data as List).map((e) {
        dprint('e type: ${e.runtimeType}');
        if (e.runtimeType == ProgramModel) {
          return e as ProgramModel;
        }
        // //TODO : FROM MAP
        return ProgramModel.fromJson(e);
      }).toList();
    }
    return [];
  }

  // delete program
  Future<void> deleteProgram(ProgramModel program, int index) async {
    dprint('programId: ${program.id}');
    dprint('index: $index');
    final allController = Get.put(AllController());

    // PROGRAM LİSTESİ JSON OLARAK TUTULUYOR BURADA PROGRAM SİLİNİYOR
    List<ProgramModel> listprogrammodel = getProgram();
    dprint('storageProgram: $listprogrammodel');
    // remove program from storage
    if (listprogrammodel.isNotEmpty) {
      //
      var result =
          listprogrammodel.where((element) => element == program).toList();

      // if found just one program so delete
      if (result.isNotEmpty && result.length == 1) {
        listprogrammodel.removeWhere((element) => element == program);
        await box.write('programList', listprogrammodel);
        allController.programList.value = listprogrammodel;

        //show snackbar say program is deleted and storage is updated
        //if program.id is not null so add programId to deletedProgramIdList
        await addDeletedProgramIdList(program);

        Get.snackbar(
          'Deleted',
          'Program is deleted and storage is updated',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
          backgroundColor: Get.theme.colorScheme.background,
          colorText: Get.theme.colorScheme.onBackground,
        );
      }
      // if found more than one program so delete just first
      else if (result.isNotEmpty && result.length > 1) {
        dprint('error: program is not unique');
        listprogrammodel.remove(program);
        await box.write('programList', listprogrammodel);
        allController.programList.value = listprogrammodel;
        //if program.id is not null so add programId to deletedProgramIdList
        await addDeletedProgramIdList(program);
        Get.snackbar(
          'Deleted',
          'Program is deleted and storage is updated',
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
          backgroundColor: Get.theme.colorScheme.background,
          colorText: Get.theme.colorScheme.onBackground,
        );
      }
    }
    //storage is empty so delete from programList controller
    else if (allController.programList.isNotEmpty) {
      allController.programList.removeAt(index);
      //if program.id is not null so add programId to deletedProgramIdList
      await addDeletedProgramIdList(program);
      Get.snackbar(
        'Deleted',
        'Program is deleted ',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 3),
        backgroundColor: Get.theme.colorScheme.background,
        colorText: Get.theme.colorScheme.onBackground,
      );
    }
  }

  Future<void> addDeletedProgramIdList(ProgramModel program) async {
    if (program.id != null) {
      var deletedProgramIdList = box.read('deletedProgramIdList');
      deletedProgramIdList ??= [];
      deletedProgramIdList.add(program.id);
      await box.write('deletedProgramIdList', deletedProgramIdList);
    }
  }
}
