import 'package:fitness/model/auth/LoginResponseModel.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/storage/get_token.dart';
import 'package:fitness/service/storage/programs.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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

    //get access_token and if it is  not null
    var token = getToken();
    if (token != null) {
      var user = await getLoginResponseModel();
      allController.loginResponseModel = user;
    }
  }

  void login(LoginResponseModel loginResponseModel) {
    //store the login response model
    dprint("login response model: $loginResponseModel");
    Get.put(AllController()).loginResponseModel = loginResponseModel;
    setLoginResponseModel(loginResponseModel);
  }
}
