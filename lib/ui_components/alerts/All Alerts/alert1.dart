import 'package:flutter/material.dart';

class Alert1 extends StatelessWidget {
  const Alert1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 73, 173, 231)),
      child: const Center(child: Text("Alert 1")),
    );
  }
}
