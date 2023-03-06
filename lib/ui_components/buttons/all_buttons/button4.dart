import 'package:flutter/material.dart';

class Button4 extends StatelessWidget {
  final String buttonName;
  const Button4(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color.fromARGB(255, 0, 194, 203),
            ),
            borderRadius: BorderRadius.circular(11)),
        fixedSize: const Size(100, 60),
      ),
      child: Text(
        buttonName,
        style: const TextStyle(color: Color.fromARGB(255, 0, 194, 203)),
      ),
    );
  }
}
