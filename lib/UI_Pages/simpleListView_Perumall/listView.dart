import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listViewScreen.dart';

class ListView extends StatefulWidget {
  const ListView({super.key});

  @override
  State<ListView> createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const ListViewScreen(),
      ),
    );
  }
}
