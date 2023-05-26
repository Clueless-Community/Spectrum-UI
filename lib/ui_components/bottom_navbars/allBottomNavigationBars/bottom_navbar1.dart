import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_Navbar1 extends StatefulWidget {
  const Bottom_Navbar1({super.key});

  @override
  State<Bottom_Navbar1> createState() => _Bottom_Navbar1State();
}

// ignore: camel_case_types
class _Bottom_Navbar1State extends State<Bottom_Navbar1> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
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
