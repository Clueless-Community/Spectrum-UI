import 'package:flutter/material.dart';

class Button6 extends StatelessWidget {
 String buttonName;
 Button6(this.buttonName,{super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            // backgroundColor: Color.fromARGB(255, 255, 255, 255),
            fixedSize: const Size(100, 100),
            shape: RoundedRectangleBorder(
                // side: BorderSide(
                //   color: Color.fromARGB(255, 0, 194, 203),
                // ),
                borderRadius: BorderRadius.circular(50))),
        child:  Text(
          buttonName,
          style: TextStyle(color: Color.fromARGB(255, 0, 194, 203)),
        ));
  }
}