import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowCode extends StatelessWidget {
  ShowCode({super.key, required this.child, required this.widgetname});
  final String widgetname;
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("$widgetname Code")),
      body: Center(
        child: Scrollbar(
          thumbVisibility: true,
          radius: const Radius.circular(10),
          thickness: 12,
          scrollbarOrientation: ScrollbarOrientation.right,
          interactive: true,
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ),
    );
  }
}
