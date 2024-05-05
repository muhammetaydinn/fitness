import 'package:dio/dio.dart';
import 'package:fitness/service/storage/get_token.dart';

// BaseOptions options = BaseOptions(
//   baseUrl: 'https://api.example.com', // API'nin ana URL'si
//   // 15 seconds

//   headers: {
//     'Authorization': 'Bearer token', // İsteğe özel başlık
//     'Content-Type': 'application/json', // İsteğe özel başlık
//   },
//   validateStatus: (status) {
//     // İsteğin başarılı olduğu durumları belirt (örneğin: 200-299 arası)
//     return status! >= 200 && status < 300 || status == 400;
//   },
// );
BaseOptions getBaseOptions() {
  String? token = getToken();
  // Özel BaseOptions oluştur
  BaseOptions options = BaseOptions(
    baseUrl: '', // API'nin ana URL'si
    connectTimeout: const Duration(
      seconds: 15,
    ), // Bağlantı zaman aşımı (milisaniye cinsinden)
    receiveTimeout: const Duration(
      seconds: 15,
    ), // Yanıt alım zaman aşımı (milisaniye cinsinden)

    headers: {
      'Content-Type': 'application/json', // İsteğe özel başlık
    },

    validateStatus: (status) {
      // İsteğin başarılı olduğu durumları belirt (örneğin: 200-299 arası)
      return true;
    },
  );

  // Eğer token varsa, Authorization başlığını ayarla
  if (token != null && token.isNotEmpty) {
    options.headers['Authorization'] = 'Bearer $token';
  }

  return options;
}
