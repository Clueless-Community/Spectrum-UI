import 'package:flutter/material.dart';

// ignore: camel_case_types
class Bottom_Navbar2 extends StatefulWidget {
  const Bottom_Navbar2({Key? key}) : super(key: key);

  @override
  State<Bottom_Navbar2> createState() => _Bottom_Navbar2State();
}

// ignore: camel_case_types
class _Bottom_Navbar2State extends State<Bottom_Navbar2> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Theme(
      data: Theme.of(context).copyWith(
        // Sets the background color of the `BottomNavigationBar`
        canvasColor: isDarkMode ? Colors.grey[900] : Colors.white,
        // Sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: isDarkMode ? Colors.amberAccent : Colors.red,
        // Sets the inactive color of the `BottomNavigationBar`
        unselectedWidgetColor: isDarkMode ? Colors.grey[400] : Colors.grey,
        // Sets the text color of the `BottomNavigationBar`
        textTheme: Theme.of(context).textTheme.copyWith(
              // Sets the text color of the labels
              // ignore: deprecated_member_use
              caption: TextStyle(
                color: isDarkMode ? Colors.amberAccent : Colors.yellow,
              ),
            ),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: isDarkMode ? Colors.grey[400] : Colors.grey[500],
          ),
          selectedFontSize: 16,
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
