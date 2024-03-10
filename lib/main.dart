import 'package:fitness/screens/auth_screen.dart';
import 'package:fitness/screens/login_screen.dart';
import 'package:fitness/screens/main_view.dart';
import 'package:fitness/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import './constants/colors.dart';
import 'screens/add_exercises.dart';
import 'screens/search_add_exercises.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        '/': (context) => AuthScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/main': (context) => const MainScreen(),
        '/addExercise': (context) => const AddExercisesScreen(),
        '/searchAddExercises': (context) => SearchAddExercisesScreen(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData(
        colorSchemeSeed: seedColor,
        useMaterial3: true,
        brightness: Brightness.dark,
        //appbar text color to white
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.light,
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
        //appbar text color to white
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.indigo,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}
