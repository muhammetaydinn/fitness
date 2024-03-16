import 'package:get/get.dart';

import '../screens/add_exercises.dart';
import '../screens/auth_screen.dart';
import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/main_view.dart';
import '../screens/register_screen.dart';
import '../screens/search_add_exercises.dart';

/*
List<GetPage> routes = [
  GetPage(name: "/", page: () => LoginPage(), binding: LoginBinding()),
  GetPage(name: "/home", page: () => HomePage(), binding: HomeBinding()),
];
*/
List<GetPage> routes = [
  GetPage(
    name: '/',
    page: () => AuthScreen(),
  ),
  GetPage(name: '/login', page: () => LoginScreen()),
  GetPage(name: '/register', page: () => RegisterScreen()),
  GetPage(name: '/main', page: () => const MainScreen()),
  GetPage(name: '/addExercise', page: () => const AddExercisesScreen()),
  GetPage(name: '/searchAddExercises', page: () => SearchAddExercisesScreen()),
  GetPage(name: '/home', page: () => HomeScreen()),
];
