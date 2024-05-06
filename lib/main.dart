import 'package:fitness/constants/theme.dart';
import 'package:fitness/service/init/init_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'constants/routes.dart';

Future<void> main() async {
  await GetStorage.init();
  //TODO: ON INIT
  await InitService().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: routes,
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      title: 'Fitness',
      darkTheme: darkTheme,
      theme: theme,
    );
  }
}
