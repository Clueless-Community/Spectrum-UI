import 'package:flutter/material.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button9.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button1.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button3.dart';
import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button11.dart';


import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button5.dart';
import 'package:flutter_component_ui/ui_components/buttons/all_buttons/text_button/button6.dart';

import '../../theme/theme.dart';
import 'all_buttons/elevated_button/button7.dart';
import 'all_buttons/outline_button/button10.dart';
import 'all_buttons/outline_button/button2.dart';
import 'all_buttons/outline_button/button4.dart';

class ButtonScreen extends StatelessWidget {
  ButtonScreen({super.key});
  final List<Widget> customOutlineButton = [
    const Button2("button"),
    const Button4("button"),
    const Button10("button"),
  ];
  final List<Widget> customElevatedButton = [
    const Button1("button"),
    const Button3("button"),
    const Button5("button"),
    const Button7("button"),
    const Button9("button"),
    const Button11("button")
  ];
  final List<Widget> customTextButton = [
    const Button6("button"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Elevated Buttons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  customElevatedButton.length,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    width: double.infinity,
                    child: customElevatedButton[index],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Ouline Buttons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  customOutlineButton.length,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    width: double.infinity,
                    child: customOutlineButton[index],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Text Buttons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  customTextButton.length,
                  (index) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    width: double.infinity,
                    child: customTextButton[index],
                  ),
                ),
              ),
              // SizedBox(
              //   width: (MediaQuery.of(context).size.width / 2 - 20),
              //   child: ListView.builder(
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: customOutlineButton[index],
              //       );
              //     },
              //     itemCount: customOutlineButton.length,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
