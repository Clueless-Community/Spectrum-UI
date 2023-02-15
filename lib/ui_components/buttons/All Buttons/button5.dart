import 'package:flutter/material.dart';

class Button5 extends StatelessWidget {
  const Button5({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null ,
    
     style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11)
        ),
        fixedSize: const Size(240, 80),
   backgroundColor: Color.fromARGB(255, 0, 194, 203),
      ),
    child: const Text('Button5'));
  }
}
