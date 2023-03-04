import 'package:flutter/material.dart';

class Button6 extends StatelessWidget {
  final String buttonName;
  const Button6(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 0, 194, 203)),
        ));
  }
}
