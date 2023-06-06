import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import '../../theme/theme.dart';

import 'allToggels/Animated Toggles/animatedToggle1.dart';
import 'allToggels/Animated Toggles/animatedToggle2.dart';
import 'allToggels/Animated Toggles/disabledToggle.dart';
import 'allToggels/Animated Toggles/modernToggle1.dart';
import 'allToggels/Animated Toggles/modernToggle2.dart';
import 'allToggels/Animated Toggles/sqaureToggle.dart';
import 'allToggels/Simple Toggles/simpleToggle2.dart';

class ToggelButtonScreen extends StatefulWidget {
  const ToggelButtonScreen({super.key});

  @override
  State<ToggelButtonScreen> createState() => ToggelButtonScreenState();
}

class ToggelButtonScreenState extends State<ToggelButtonScreen> {
  final basicSmallToggelButton = [
    const ToggelButton2(),
  ];
  List<Color?> basicSmallToggelButtonColor = [null];

  final modernWTToggelButton = [
    const CustomToggleButton4(),
  ];
  List<Color?> modernWTToggelButtonColor = [null];

  final modernToggelButton = [
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomToggleButton(),
        SizedBox(
          width: 15,
        ),
        CustomToggleButton5(),
      ],
    ),
  ];
  List<Color?> modernToggelButtonColor = [null, null];

  final disabledToggelButton = [
    const CustomToggleButton1(),
  ];
  List<Color?> disabledToggelButtonColor = [null];

  final animatedToggelButton = [
    const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomToggleButton2(),
        SizedBox(
          width: 15,
        ),
        CustomToggleButton3(),
      ],
    )
  ];
  List<Color?> animatedToggelButtonColor = [null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Basic Resizabel Toggles ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  basicSmallToggelButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: basicSmallToggelButton[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: basicSmallToggelButton[index],
                                    ) as int,
                                  );
                                  setState(() {
                                    basicSmallToggelButtonColor[index] =
                                        Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: basicSmallToggelButtonColor[index],
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
                  child: Text("Modern Toggle ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  modernWTToggelButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: modernWTToggelButton[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: modernWTToggelButton[index],
                                    ) as int,
                                  );
                                  setState(() {
                                    modernWTToggelButtonColor[index] =
                                        Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: modernWTToggelButtonColor[index],
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
                  child: Text("Modern Toggles With Text",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  modernToggelButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: modernToggelButton[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: modernToggelButton[index],
                                    ) as int,
                                  );
                                  setState(() {
                                    modernToggelButtonColor[index] =
                                        Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: modernToggelButtonColor[index],
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
                  child: Text("Disabled Toggle",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  disabledToggelButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: disabledToggelButton[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: disabledToggelButton[index],
                                    ) as int,
                                  );
                                  setState(() {
                                    disabledToggelButtonColor[index] =
                                        Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: disabledToggelButtonColor[index],
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
                  child: Text("Animated Toggles With Icons ",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  animatedToggelButton.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: animatedToggelButton[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: animatedToggelButton[index],
                                    ) as int,
                                  );
                                  setState(() {
                                    animatedToggelButtonColor[index] =
                                        Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: animatedToggelButtonColor[index],
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
            ],
          ),
        ),
      ),
    );
  }
}
