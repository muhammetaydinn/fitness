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
      return (data as List).map((e) => ProgramModel.fromJson(e)).toList();
    }
    return [];
  }
}
// TODO: Implement registration logic
