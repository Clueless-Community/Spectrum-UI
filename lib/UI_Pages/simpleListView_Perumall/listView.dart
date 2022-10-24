import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listViewScreen.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({super.key});

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
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
