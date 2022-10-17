import 'package:flutter/material.dart';

class UpperTabBar extends StatefulWidget {
  const UpperTabBar({super.key});

  @override
  State<UpperTabBar> createState() => _UpperTabBarState();
}

class _UpperTabBarState extends State<UpperTabBar> {
  final upperTab = const TabBar(
      labelColor: Color.fromARGB(255, 0, 7, 202),
      unselectedLabelColor: Colors.grey,
      indicator: UnderlineTabIndicator(
          borderSide:
              BorderSide(width: 5.0, color: Color.fromARGB(255, 0, 7, 202)),
          insets: EdgeInsets.symmetric(horizontal: 16.0)),
      tabs: <Tab>[
        Tab(icon: Icon(Icons.home)),
        Tab(
            icon: Icon(
          Icons.contacts,
        )),
        Tab(
            icon: Icon(
          Icons.favorite,
        )),
        Tab(
            icon: Icon(
          Icons.shopping_cart,
        )),
        Tab(
            icon: Icon(
          Icons.menu,
        )),
      ]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ],
          title: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              'My App',
              style: TextStyle(color: Colors.black),
            ),
          ),
          bottom: upperTab,
        ),
        body: const TabBarView(
          children: [],
        ),
      ),
    );
  }
}
