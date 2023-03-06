import 'package:flutter/material.dart';

class Button9 extends StatelessWidget {
  final String buttonName;
  const Button9(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
          fixedSize: const Size(100, 60),
          backgroundColor: const Color.fromRGBO(0, 95, 153, 0.36),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(color: Color.fromRGBO(226, 232, 240, 1)),
        ));
  }
}
