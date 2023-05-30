import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_NavBar3 extends StatefulWidget {
  const Bottom_NavBar3({super.key});

  @override
  State<Bottom_NavBar3> createState() => _Bottom_NavBar3State();
}

// ignore: camel_case_types
class _Bottom_NavBar3State extends State<Bottom_NavBar3> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
        animationCurve: Curves.linear,
        selectedIndex: _selectedIndex,
        iconSize: 30,
        animationDuration: const Duration(milliseconds: 400),
        showElevation: true,
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          FlashyTabBarItem(
            icon: const Icon(Icons.event),
            title: const Text('Events'),
            activeColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search),
            title: const Text('Search'),
            activeColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.highlight),
            title: const Text('Highlights'),
            activeColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.settings),
            title: const Text('Settings'),
            activeColor: Colors.amberAccent,
            inactiveColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
