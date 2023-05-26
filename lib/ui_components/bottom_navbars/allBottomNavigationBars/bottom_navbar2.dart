import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_Navbar2 extends StatefulWidget {
  const Bottom_Navbar2({super.key});

  @override
  State<Bottom_Navbar2> createState() => _Bottom_Navbar2State();
}

// ignore: camel_case_types
class _Bottom_Navbar2State extends State<Bottom_Navbar2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: Colors.grey.shade400,
          ),
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.shifting,
          selectedFontSize: 14,
          selectedIconTheme: const IconThemeData(color: Colors.blueAccent),
          selectedItemColor: Colors.blueAccent,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_rate),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
