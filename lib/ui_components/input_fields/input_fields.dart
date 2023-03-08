import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_field_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_field_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_field_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_field_4.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/input_field_5.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_area_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_area_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/text_area_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/all_input_fields/ttext_area_4.dart';

class InputFieldScreen extends StatelessWidget {
  InputFieldScreen({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: inputfields[index],
          );
        },
        itemCount: inputfields.length,
      ),
    );
  }
}
