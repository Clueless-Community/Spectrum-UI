import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String buttonName;
  const Button2(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            // backgroundColor: Color.fromARGB(255, 255, 255, 255),
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 194, 203),
                ),
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromARGB(255, 0, 194, 203)),
        ));
  }
}
