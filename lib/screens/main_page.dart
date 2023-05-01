import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/about_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/fav_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/home_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const Home(),
    const SearchPage(),
    const FavPage(),
    const AboutPage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          selectedItemColor: const Color.fromRGBO(55, 80, 206, 1),
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            ),
            BottomNavigationBarItem(
              label: 'Favourite',
              icon: Icon(FluentSystemIcons.ic_fluent_favorites_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_favorites_filled),
            ),
            BottomNavigationBarItem(
              label: 'About',
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            ),
          ]),
    );
  }
}
