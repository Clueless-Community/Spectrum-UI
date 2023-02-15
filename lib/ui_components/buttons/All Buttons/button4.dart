import 'package:flutter/material.dart';

class Button4 extends StatelessWidget {
  const Button4({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){},
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
      child: const Text('Button4',
      style: TextStyle(
        color: Color.fromARGB(255, 0, 194, 203)
      ),
      ),
      );
  }
}