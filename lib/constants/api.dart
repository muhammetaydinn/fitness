//set api endpoints like basurl

class Api {
  static const baseUrl = 'http://10.0.2.2:8080';
  static const v1Api = '$baseUrl/api/v1';
  static const registerApi = '$v1Api/auth/register';
  static const loginApi = '$v1Api/auth/authenticate';
  static const refreshTokenApi = '$v1Api/auth/refresh-token';
  static const demoControllerApi = '$v1Api/demo-controller';
  //{{URL}}/api/v1/program/sync
  static const syncProgramsApi = '$v1Api/program/sync';

}
