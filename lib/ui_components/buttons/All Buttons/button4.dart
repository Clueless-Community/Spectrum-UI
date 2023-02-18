import 'package:flutter/material.dart';

class Button4 extends StatelessWidget {
  String buttonName;
  Button4(this.buttonName,{super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
      style: ElevatedButton.styleFrom(

   backgroundColor: Color.fromARGB(255, 255, 255, 255),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color:  Color.fromARGB(255, 0, 194, 203),
          ),
          borderRadius: BorderRadius.circular(11)
        ),
        fixedSize: const Size(240, 80),
      ),
      child:  Text(buttonName,
      style: TextStyle(
        color: Color.fromARGB(255, 0, 194, 203)
      ),
      ),
      );
  }
}