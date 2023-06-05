import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_Navbar1 extends StatefulWidget {
  const Bottom_Navbar1({super.key});

  @override
  State<Bottom_Navbar1> createState() => _Bottom_Navbar1State();
}

class _Bottom_Navbar1State extends State<Bottom_Navbar1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          // Sets the background color of the `BottomNavigationBar`
          canvasColor: isDarkMode ? Colors.grey[900] : Colors.white,
          // Sets the active color of the `BottomNavigationBar`
          primaryColor: isDarkMode ? Colors.amberAccent : Colors.red,
          unselectedWidgetColor: isDarkMode ? Colors.grey[400] : Colors.grey,
          // Sets the inactive color of the `BottomNavigationBar`
          textTheme: Theme.of(context).textTheme.copyWith(
                // ignore: deprecated_member_use
                caption: TextStyle(
                  color: isDarkMode ? Colors.amberAccent : Colors.yellow,
                ),
              ),
        ),
        child: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: isDarkMode ? Colors.grey[400] : Colors.grey[500],
          ),
          selectedFontSize: 14,
          selectedItemColor:
              isDarkMode ? Colors.amberAccent : Colors.blueAccent,
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
