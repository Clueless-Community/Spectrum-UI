import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/modelNavBar_Perumall/screens/drawer.dart';
import 'package:flutter_ui/UI_Pages/modelNavBar_Perumall/screens/drawerlist.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                drawerheader(),
                drawerlist(),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Model Nav Bar"),
        centerTitle: true,
      ),
      body: Center(),
    );
  }
}
