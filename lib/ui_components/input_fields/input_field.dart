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
    InputField_1(),
    InputField_2(),
    InputField_3(),
    InputField_4(),
    InputField_5(),
    TextArea_1(),
    TextArea_2(),
    TextArea_3(),
    TextArea_4()
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
