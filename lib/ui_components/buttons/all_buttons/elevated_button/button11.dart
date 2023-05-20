import 'package:flutter/material.dart';

class Button11 extends StatelessWidget {
  final String buttonName;
  const Button11(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 112, 225, 231),
          fixedSize: const Size(100, 60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(
                color: Color.fromARGB(255, 73, 129, 220), width: 1.5),
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ));
  }
}
