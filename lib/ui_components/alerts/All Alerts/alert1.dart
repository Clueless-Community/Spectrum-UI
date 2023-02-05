import 'package:flutter/material.dart';

class Alert1 extends StatelessWidget {
  const Alert1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.pink),
      child: const Text("Alert 1"),
    );
  }
}
