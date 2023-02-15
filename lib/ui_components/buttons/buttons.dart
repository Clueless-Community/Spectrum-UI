import 'package:flutter/material.dart';

import 'All Buttons/button1.dart';
import 'All Buttons/button2.dart';
import 'All Buttons/button3.dart';
import 'All Buttons/button4.dart';
import 'All Buttons/button5.dart';


class ButtonScreen extends StatelessWidget {
 ButtonScreen({super.key});
final List<Widget> buttons = [const Button1(), const Button2(), const Button3(), const Button4(), const Button5()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context, index)
      {
        return Padding(padding: const EdgeInsets.all(8.0),
        child: buttons[index],
        );
      },
      itemCount: buttons.length,
      ),
    );
  }
}
