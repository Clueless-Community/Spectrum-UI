import 'package:flutter/material.dart';

class Button8 extends StatelessWidget {
  final String buttonName;
  const Button8(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(0, 95, 153, 1),
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ));
  }
}
