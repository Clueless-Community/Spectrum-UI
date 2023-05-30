import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:flutter_component_ui/ui_components/labels/all_labels/basic_label.dart/basic_label.dart';
import 'package:flutter_component_ui/ui_components/labels/all_labels/choice_label/choice_label.dart';

import 'package:provider/provider.dart';

import '../../theme/theme.dart';
import 'all_labels/action_label/action_label.dart';
import 'all_labels/filter_label/filter_label.dart';
import 'all_labels/input_label/input_labels.dart';

class LabelScreen extends StatefulWidget {
  const LabelScreen({super.key});

  @override
  State<LabelScreen> createState() => LabelScreenState();
}

class LabelScreenState extends State<LabelScreen> {
  final basicLabelList = [
    const BasicChipWidget(
        basicChipLabel: 'Basic Chip', chipColor: Colors.blueAccent),
  ];
  List<Color?> basicLabelListColor = [null];

  final actionLabelList = [
    const ActionLabels(),
  ];
  List<Color?> actionLabelListColor = [null];

  final inputLabelList = [
    const InputLables(),
  ];
  List<Color?> inputLabelListColor = [null];

  final choiceLabelList = [
    const ChoiceChipWidget(),
  ];
  List<Color?> choiceLabelListColor = [null];

  final filterLabelList = [
    const FilterChipWidget(),
  ];
  List<Color?> filterLabelListColor = [null];

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
                  child: Text("Basic Label",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  basicLabelList.length,
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
                                70.0, // Set the maximum height constraint
                          ),
                          child: basicLabelList[index],
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
                                            70.0, // Set the maximum height constraint
                                      ),
                                      child: basicLabelList[index],
                                    ),
                                  );
                                  setState(() {
                                    basicLabelListColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: basicLabelListColor[index],
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
                  child: Text("Action Label",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  actionLabelList.length,
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
                                70.0, // Set the maximum height constraint
                          ),
                          child: actionLabelList[index],
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
                                            70.0, // Set the maximum height constraint
                                      ),
                                      child: actionLabelList[index],
                                    ),
                                  );
                                  setState(() {
                                    actionLabelListColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: actionLabelListColor[index],
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
                  child: Text("Input Label",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  inputLabelList.length,
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
                                70.0, // Set the maximum height constraint
                          ),
                          child: inputLabelList[index],
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
                                            70.0, // Set the maximum height constraint
                                      ),
                                      child: inputLabelList[index],
                                    ),
                                  );
                                  setState(() {
                                    inputLabelListColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: inputLabelListColor[index],
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
                  child: Text("Choice Label",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  choiceLabelList.length,
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
                                70.0, // Set the maximum height constraint
                          ),
                          child: choiceLabelList[index],
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
                                            70.0, // Set the maximum height constraint
                                      ),
                                      child: choiceLabelList[index],
                                    ),
                                  );
                                  setState(() {
                                    choiceLabelListColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: choiceLabelListColor[index],
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
                  child: Text("Filter Label",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  filterLabelList.length,
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
                                70.0, // Set the maximum height constraint
                          ),
                          child: filterLabelList[index],
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
                                            70.0, // Set the maximum height constraint
                                      ),
                                      child: filterLabelList[index],
                                    ),
                                  );
                                  setState(() {
                                    filterLabelListColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: filterLabelListColor[index],
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
