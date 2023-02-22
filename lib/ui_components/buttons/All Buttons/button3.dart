import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  final String buttonName;
  const Button3(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        fixedSize: const Size(100, 60),
        backgroundColor: const Color.fromARGB(255, 0, 194, 203),
      ),
      child: Text(
        buttonName,
        style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
