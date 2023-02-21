import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/buttons/All%20Buttons/button10.dart';
import 'package:flutter_component_ui/ui_components/buttons/All%20Buttons/button7.dart';
import 'package:flutter_component_ui/ui_components/buttons/All%20Buttons/button8.dart';
import 'package:flutter_component_ui/ui_components/buttons/All%20Buttons/button9.dart';

import 'All Buttons/button1.dart';
import 'All Buttons/button2.dart';
import 'All Buttons/button3.dart';
import 'All Buttons/button4.dart';
import 'All Buttons/button5.dart';
import 'All Buttons/button6.dart';
// import 'All Buttons/button5.dart';

class ButtonScreen extends StatelessWidget {
  ButtonScreen({super.key});
  final List<Widget> buttons1 = [
    const Button1("button"),
    const Button3("button"),
    const Button5("button"),
    const Button7("button"),
    const Button9("button")
  ];
  final List<Widget> buttons2 = [
    const Button2("button"),
    const Button4("button"),
    const Button6("button"),
    const Button8("button"),
    const Button10("button"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: (MediaQuery.of(context).size.width / 2 - 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buttons1[index],
                );
              },
              itemCount: buttons1.length,
            ),
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width / 2 - 20),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buttons2[index],
                );
              },
              itemCount: buttons2.length,
            ),
          ),
        ],
      ),
    );
  }
}
