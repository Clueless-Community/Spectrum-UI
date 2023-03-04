import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final String buttonName;
  const Button1(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 194, 203),
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ));
  }
}
