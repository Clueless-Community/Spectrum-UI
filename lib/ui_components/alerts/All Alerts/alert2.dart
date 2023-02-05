import 'package:flutter/material.dart';

class Alert2 extends StatelessWidget {
  const Alert2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.pink),
      child: const Text("Alert 2"),
    );
  }
}
