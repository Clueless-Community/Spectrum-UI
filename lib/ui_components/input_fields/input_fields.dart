import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_4.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_5.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_fields/input_field_6.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/text_area_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_areas/ttext_area_4.dart';

class InputFieldScreen extends StatelessWidget {
  InputFieldScreen({super.key});

  final List<Widget> textareas = [
    const TextArea1(
      label: "OneLine Text",
      hinttext: "Write Description",
    ),
    const TextArea2(
      label: "Multiline Text",
      hinttext: "Write Description",
    ),
    const TextArea3(
      label: "Text Circular",
      hinttext: "Write Description",
    ),
    const TextArea4(
      label: "Colored Border Text",
      hinttext: "Write Description",
    )
  ];

  final List<Widget> inputfields = [
    const InputField1(
      label: "Title",
      hinttext: "Input Title",
    ),
    const InputField2(
      label: "Title Circular",
      hinttext: "Input Title",
    ),
    const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ),
    const InputField4(
      label: "Email ID",
      hinttext: "Email",
    ),
    const InputField5(
      label: "Password",
      hinttext: "password",
    ),
    const InputField6(
      label: "Phone Number",
      hinttext: "phone",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Input Fields",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: MyTheme.lightBluishColor),
                ),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                inputfields.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: inputfields[index],
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
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: textareas[index],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    ));
  }
}
