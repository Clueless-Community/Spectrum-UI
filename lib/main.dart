import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/ui_collection.dart';

import 'UI_Pages/upperTabbar_pratikagr/screens/upper_tab_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const uTabBar(),
      ),
    );
  }
}
