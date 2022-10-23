// ignore_for_file: camel_case_types

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
          child: Column(
            children: const [
              drawerheader(),
              drawerlist(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text("Model Nav Bar"),
        centerTitle: true,
      ),
      body: const Center(),
    );
  }
}
