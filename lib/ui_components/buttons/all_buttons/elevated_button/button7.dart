import 'package:flutter/material.dart';

class Button7 extends StatelessWidget {
  final String buttonName;
  const Button7(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Container(
          padding: const EdgeInsets.only(
            bottom: 4, // space between underline and text
          ),
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color.fromARGB(255, 0, 194, 203), // Text colour here
            width: 1.0, // Underline width
          ))),
          child: Text(
            buttonName,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 194, 203),

              // decoration: TextDecoration.underline,
              // decorationThickness: 4,
            ),
          ),
        ));
  }
}
