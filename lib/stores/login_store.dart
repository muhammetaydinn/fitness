import 'package:mobx/mobx.dart';

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
    // TODO: Implement registration logic
    print(
      'First Name:Email: $email, Password: $password',
    );
    var response = await loginUserService(
      email,
      password,
    );
    print(response);

    // here we will call the api to register the user
  }
}
