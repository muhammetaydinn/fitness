import 'package:dio/dio.dart';
import 'package:fitness/service/storage/get_token.dart';

class DioConfig {
  static BaseOptions getBaseOptions({String? baseUrl}) {
    String? token = getToken();

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl ?? '',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
      headers: {'Content-Type': 'application/json'},
      validateStatus: (status) {
        //TODO: add more status codes
        return true;
      },
    );

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return options;
  }

  static Dio getDio({String? baseUrl}) {
    String? token = getToken();
    print('baseUrl: $baseUrl' "\n" "token: $token");
    return Dio(getBaseOptions(baseUrl: baseUrl));
  }
}
