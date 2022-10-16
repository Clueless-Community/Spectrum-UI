import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customised FAB"),
      ),
      floatingActionButton: SizedBox(
        height: 60,
        child: FloatingActionButton.extended(
          onPressed: () {

          },
          label: const Text("DIRECTIONS"),
          icon: const Icon(Icons.directions),
          backgroundColor: const Color(0xff275EE4),
        ),
      ),
    );
  }
}
