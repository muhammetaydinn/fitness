import 'package:fitness/ui/home_view.dart';
import 'package:flutter/material.dart';
import './constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ),
      home: const HomeView(),
    );
  }
}
