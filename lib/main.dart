import 'package:flutter/material.dart';
import 'package:lemmings/Screens/HomeScreen.dart';
import 'package:lemmings/Screens/SecondScreen.dart';
import 'package:lemmings/Screens/ThirdScreen.dart';
import 'Utilities/Colors.dart';
import 'Utilities/Constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode
          ? ThemeData.dark().copyWith(
        primaryColor: MyColors.purple,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          titleTextStyle: TextStyle(fontFamily: Bold, color: Colors.white),
          iconTheme: IconThemeData(color: MyColors.primaryColor),
        ),
      )
          : ThemeData.light().copyWith(
        primaryColor: MyColors.purple,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(fontFamily: Bold, color: Colors.black),
          iconTheme: IconThemeData(color: MyColors.primaryColor),
        ),
      ),
      home: MyBottomNavigationBar(_toggleTheme, _isDarkMode), // Pass _isDarkMode to MyBottomNavigationBar
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode; // Add isDarkMode parameter

  MyBottomNavigationBar(this.toggleTheme, this.isDarkMode); // Update constructor

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _screens = [
    HomeScreen(),
    SecondScreen(),
    ThirdScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Second',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Third',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        onTap: _onItemTapped,
      ),
    );
  }
}
