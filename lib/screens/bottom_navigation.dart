import 'package:flutter/material.dart';
import 'package:flutter_component_ui/screens/about.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/home.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter_component_ui/screens/request.dart';
import 'package:flutter_component_ui/screens/search.dart';

class ComponentScreen extends StatefulWidget {
  const ComponentScreen({super.key});

  @override
  State<ComponentScreen> createState() => _ComponentScreenState();
}

class _ComponentScreenState extends State<ComponentScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = [
    const Home(),
    const SearchPage(),
    const RequestPage(),
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
          backgroundColor: Colors.white,
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
              label: 'Dark',
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            ),
            BottomNavigationBarItem(
              label: 'Run',
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            ),
            BottomNavigationBarItem(
              label: 'People',
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            ),
          ]),
    );
  }
}
