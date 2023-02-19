import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  String buttonName;
  Button3(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
        fixedSize: const Size(240, 80),
        backgroundColor: Color.fromARGB(255, 0, 194, 203),
      ),
      child: Text(
        buttonName,
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
