/*
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

*/

// darkTheme and theme

import 'package:fitness/constants/colors.dart';
import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  colorSchemeSeed: seedColor,
  useMaterial3: true,
  brightness: Brightness.dark,
  //appbar text color to white
);

final theme = ThemeData(
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
);
