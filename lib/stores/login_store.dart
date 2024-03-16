import 'package:mobx/mobx.dart';

import '../service/other/dprint.dart';
import '../service/login_service.dart';
part 'login_store.g.dart';
class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setPassword(String value) {
    password = value;
  }

  Future<void> login() async {
    dprint(
      'First Name:Email: $email, Password: $password',
    );
    var response = await loginUserService(
      email,
      password,
    );
    dprint(response);
  }
}
