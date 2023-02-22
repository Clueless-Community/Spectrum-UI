import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/input_field_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/input_field_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/input_field_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/input_field_5.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/text_area_1.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/text_area_2.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/text_area_3.dart';
import 'package:flutter_component_ui/ui_components/input_fields/allinputfields/ttext_area_4.dart';

import 'allinputfields/input_field_4.dart';

class InputFieldScreen extends StatelessWidget {
  InputFieldScreen({super.key});
  final List<Widget> inputfields = [
    const InputField1(
      hinttext: "Hello world",
    ),
    const InputField2(hinttext: "Place Holder"),
    const InputField3(hinttext: "Place Holder"),
    const InputField4(hinttext: "Place Holder"),
    const InputField5(hinttext: "Place Holder"),
    const TextArea1(hinttext: "Place Holder"),
    const TextArea2(hinttext: "Place Holder"),
    const TextArea3(hinttext: "Place Holder"),
    const TextArea4(hinttext: "Place Holder")
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
