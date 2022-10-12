import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class uTabBar extends StatefulWidget {
  const uTabBar({super.key});

  @override
  State<uTabBar> createState() => _uTabBarState();


}

class _uTabBarState extends State<uTabBar> {
    final upperTab = const TabBar(
unselectedLabelColor: Colors.grey,
     indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 5.0,color:Color.fromARGB(255, 0, 7, 202)),
          insets: EdgeInsets.symmetric(horizontal:16.0)
        ),
      tabs: <Tab>[
    Tab(icon: Icon(Icons.home,color: Color.fromARGB(255, 0, 7, 202))),
    Tab(icon: Icon(Icons.contacts,color:Colors.grey)),
    Tab(icon: Icon(Icons.favorite,color:Colors.grey)),
    Tab(icon: Icon(Icons.shopping_cart,color: Colors.grey)),
    Tab(icon: Icon(Icons.menu,color:Colors.grey)),
  ]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(Icons.search,color: Colors.black,),
            ),
          ],
          title: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text('My App',style: TextStyle(color: Colors.black),),
          ),
          bottom: upperTab,
        ),
        body: TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}