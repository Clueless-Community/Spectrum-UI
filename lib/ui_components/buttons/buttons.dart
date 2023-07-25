import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button9.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button1.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button3.dart';

import 'package:flutter_component_ui/ui_components/buttons/all_buttons/elevated_button/button5.dart';
import 'package:flutter_component_ui/ui_components/buttons/all_buttons/text_button/button6.dart';
import 'package:provider/provider.dart';
import '../../theme/theme.dart';
import 'all_buttons/animated_button/button11.dart';
import 'all_buttons/animated_button/button12.dart';
import 'all_buttons/elevated_button/button7.dart';
import 'all_buttons/outline_button/button10.dart';
import 'all_buttons/outline_button/button2.dart';
import 'all_buttons/outline_button/button4.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  final List<Widget> customOutlineButton = [
    const Button2("button"),
    const Button4("button"),
    const Button10("button"),
  ];

  List<int> customOutlineButtonIndex = [1, 2, 3];

  final List<Widget> customElevatedButton = [
    const Button1("button"),
    const Button3("button"),
    const Button5("button"),
    const Button7("button"),
    const Button9("button")
  ];
  List<int> customElevatedButtonIndex = [4, 5, 6, 7, 8];

  final List<Widget> customTextButton = [
    const Button6("button"),
  ];
  List<int> customTextButtonIndex = [9];

  List<Color?> customTextButtonColor = [null];

  final List<Widget> customAnimatedButton = [
    const Button11("button"),
    const Button12("button"),
  ];

  List<Color?> customAnimatedButtonColor = [null, null];

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
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: customElevatedButton[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(customElevatedButtonIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel.starred(
                                          customElevatedButtonIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: customOutlineButton[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(customOutlineButtonIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel.starred(
                                          customOutlineButtonIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: customTextButton[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(customTextButtonIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel.starred(
                                          customTextButtonIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Animated Buttons",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  customAnimatedButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: customAnimatedButton[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(customTextButtonIndex[index]);
                                  setState(() {
                                    customTextButtonColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: customAnimatedButtonColor[index],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
