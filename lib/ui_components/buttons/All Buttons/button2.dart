import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            fixedSize: const Size(100, 100),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Color.fromARGB(255, 0, 194, 203),
                ),
                borderRadius: BorderRadius.circular(50))),
        child: const Text(
          'Button2',
          style: TextStyle(color: Color.fromARGB(255, 0, 194, 203)),
        ));
  }
}
