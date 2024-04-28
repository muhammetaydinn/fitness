import 'package:fitness/screens/exercises_screen.dart';
import 'package:fitness/screens/home_screen.dart';
import 'package:fitness/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/all_controller.dart';
import '../data/load_json.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _allController = Get.put(AllController());
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    const Ekran(),
    const Ekran3()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    loadJsonData().then((value) {
      _allController.setMovementList(value);
      _allController.setFilteredMovementList(value);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Theme.of(context).colorScheme.primary,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Exercises',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
