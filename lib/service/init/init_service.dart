import 'package:fitness/service/storage/get_token.dart';
import 'package:fitness/service/storage/programs.dart';
import 'package:get/get.dart';

import '../../controller/all_controller.dart';

class InitService {
  //localden veri çekme işlemleri için kullanılacak
  // localdeki programları çek
  Future<void> init() async {
    final allController = Get.put(AllController());
    // Do some init work
    //localden kullanıcı programını getir
    var a = ProgramService().getProgram();
    //modele ata
    allController.programList.value = List.from(a);

    var user = await getLoginResponseModel();
    allController.loginResponseModel = user;
  }
}
