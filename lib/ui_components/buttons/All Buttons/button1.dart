import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (
    ) {
    }, 
     style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 0, 194, 203),
              fixedSize: const Size(100, 100),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
    child: const Text('Button1'));
  }
}
