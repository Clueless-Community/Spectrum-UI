import 'package:flutter/material.dart';

class Button10 extends StatelessWidget {
  final String buttonName;
  const Button10(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            // backgroundColor: Color.fromARGB(255, 255, 255, 255),
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                  color: Color.fromRGBO(0, 95, 153, 1),
                ),
                borderRadius: BorderRadius.circular(50))),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromRGBO(0, 95, 153, 1)),
        ));
  }
}
