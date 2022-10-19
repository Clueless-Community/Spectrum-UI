import 'package:flutter/material.dart';

class DemoWidget extends StatelessWidget {
  const DemoWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, contraints) {
        return Container(
          padding: const EdgeInsets.all(5),
          width: contraints.maxWidth * 0.8,
          height: 200,
          child: const Card(child: Text("Demo Boxes")),
        );
      },
    );
  }
}
