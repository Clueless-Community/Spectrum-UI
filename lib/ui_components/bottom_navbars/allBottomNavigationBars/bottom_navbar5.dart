import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom_Navbar5 extends StatefulWidget {
  const Bottom_Navbar5();

  @override
  _Bottom_Navbar5State createState() => _Bottom_Navbar5State();
}

class _Bottom_Navbar5State extends State<Bottom_Navbar5> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Likes',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Search',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Profile',
  //     style: optionStyle,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    final isDarkModeEnabled = Theme.of(context).brightness == Brightness.dark;

    return Theme(
      data: ThemeData(
        brightness: isDarkModeEnabled ? Brightness.dark : Brightness.light,
        scaffoldBackgroundColor:
            isDarkModeEnabled ? Colors.grey[700] : Colors.black,
      ),
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: isDarkModeEnabled ? Colors.black : Colors.grey[200],
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[300]!,
                color: Colors.grey,
                tabs: const [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.mail,
                    text: 'Likes',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
