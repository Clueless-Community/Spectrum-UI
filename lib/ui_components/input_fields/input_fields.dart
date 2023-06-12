import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_4.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_5.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/ttext_area_4.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';

class InputFieldScreen extends StatefulWidget {
  const InputFieldScreen({super.key});

  @override
  State<InputFieldScreen> createState() => _InputFieldScreenState();
}

class _InputFieldScreenState extends State<InputFieldScreen> {
  final List<Widget> textareas = [
    const TextArea1(
      label: "TextArea1",
      hinttext: "Write Message",
    ),
    const TextArea2(
      label: "TextArea2",
      hinttext: "Write Description",
    ),
    const TextArea3(
      label: "TextArea3",
      hinttext: "Write Description",
    ),
    const TextArea4(
      label: "TextArea4",
      hinttext: "Write Description",
    )
  ];
  List<int> textareasIndex = [37, 38, 39, 40];

  final List<Widget> inputfields = [
    const InputField1(
      label: "Title",
      hinttext: "Input Title",
    ),
    const InputField2(
      label: "Title Lite",
      hinttext: "Input Title",
    ),
    const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ),
    const InputField4(
      label: "Title Lite-X",
      hinttext: "Input Title",
    ),
    const InputField5(
      label: "Title Type B",
      hinttext: "Input Title",
    ),
  ];
  List<int> inputfieldsIndex = [41, 42, 43, 44, 45];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Input Fields",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                inputfields.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: inputfields[index],
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
                                favProviderModel.add(inputfieldsIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(inputfieldsIndex[index]))
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
                child: Text("Text Areas",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                textareas.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: textareas[index],
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
                                favProviderModel.add(textareasIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(textareasIndex[index]))
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
          ],
        ),
      ),
    ));
  }
}
