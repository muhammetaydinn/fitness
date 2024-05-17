//set api endpoints like basurl

class Api {
  //emulator
  static const baseUrl = 'http://10.0.2.2:8080/api/v1';
  //live
  // static const baseUrl = 'https://fitnessbackend-dgfk.onrender.com/api/v1';
  // static const baseUrl = 'http://192.168.1.123:8080';
  static const registerApi = '/auth/register';
  static const loginApi = '/auth/authenticate';
  //{{URL}}/api/v1/program/sync
  static const syncProgramsApi = '/program/sync';
  // {{URL}}/api/v1/program/deleteMultiple
  static const deleteMultipleProgramsApi = '/program/deleteMultiple';
  //{{URL}}/api/v1/users
  static const changePasswordPatchApi = '/users';
  //{{URL}}/api/v1/users/reset-password-otp
  static const resetPasswordOtpApi = '/users/reset-password-otp';
//{{URL}}/api/v1/users/otp
  static const verifyOtpApi = '/users/otp';
  //{{URL}}/api/v1/users/new-password
  static const newPasswordApi = '/users/new-password';
}
