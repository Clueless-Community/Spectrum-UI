import 'package:flutter/material.dart';

class Button5 extends StatelessWidget {
  final String buttonName;
  const Button5(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          fixedSize: const Size(100, 60),
          backgroundColor: const Color.fromARGB(255, 172, 243, 247),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 168, 168, 168)),
        ));
  }
}
