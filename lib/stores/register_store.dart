// import 'package:fitness/service/register_service.dart';
// import 'package:mobx/mobx.dart';

// import '../model/RegisterResponseModel.dart';
// part 'register_store.g.dart';

// class RegisterStore = _RegisterStoreBase with _$RegisterStore;

// abstract class _RegisterStoreBase with Store {
//   // existing code...

//   @observable
//   String firstName = '';

//   @observable
//   String lastName = '';

//   @observable
//   String email = '';

//   @observable
//   String password = '';

//   @computed
//   bool get isValid =>
//       firstName.isNotEmpty &&
//       lastName.isNotEmpty &&
//       email.isNotEmpty &&
//       password.isNotEmpty;

//   //registerModelResponse
//   @observable
//   RegisterResponseModel registerModelResponse = RegisterResponseModel(
//     access_token: '',
//     refresh_token: '',
//   );
//   @action
//   void setFirstName(String value) {
//     firstName = value;
//   }

//   @action
//   void setLastName(String value) {
//     lastName = value;
//   }

//   @action
//   void setEmail(String value) {
//     email = value;
//   }

//   @action
//   void setPassword(String value) {
//     password = value;
//   }

//   Future<void> register() async {
//     // TODO: Implement registration logic
//     print(
//       'First Name: $firstName, Last Name: $lastName, Email: $email, Password: $password',
//     );
//     var response = await registerUserService(
//       firstName,
//       lastName,
//       email,
//       password,
//     );
//     print(response);

//     registerModelResponse = RegisterResponseModel.fromJson(response);
//     print(registerModelResponse.access_token);
//     // here we will call the api to register the user
//   }
// }
