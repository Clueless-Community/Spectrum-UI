import 'package:flutter/material.dart';

class Button7 extends StatelessWidget {
  String buttonName;
  Button7(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Container(
          padding: EdgeInsets.only(
            bottom: 4, // space between underline and text
          ),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Color.fromARGB(255, 0, 194, 203), // Text colour here
            width: 1.0, // Underline width
          ))),
          child: Text(
            buttonName,
            style: TextStyle(
              color: Color.fromARGB(255, 0, 194, 203),

              // decoration: TextDecoration.underline,
              // decorationThickness: 4,
            ),
          ),
        ));
  }
}
