import 'package:dio/dio.dart';
import 'package:fitness/service/other/dprint.dart';
import 'package:fitness/service/storage/get_token.dart';

class DioConfig {
  static BaseOptions getBaseOptions({String? baseUrl}) {
    String? token = getToken();

    BaseOptions options = BaseOptions(
      baseUrl: baseUrl ?? '',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 45),
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
    dprint('baseUrl: $baseUrl' "\n" "token: $token");
    return Dio(getBaseOptions(baseUrl: baseUrl));
  }
}
