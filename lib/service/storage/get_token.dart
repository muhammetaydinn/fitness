import 'package:get_storage/get_storage.dart';

Future<String> getToken() async {
  final box = GetStorage();
  return box.read('access_token');
}