import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listViewScreen.dart';

class listView extends StatefulWidget {
  const listView({super.key});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: listViewScreen(),
      ),
    );
  }
}
