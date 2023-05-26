import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/basic_radio_button.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_custom_color.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_horizontal_layout.dart';
import 'package:flutter_component_ui/ui_components/radios/radio_widgets/radio_button_with_text_and_styles.dart';


class RadioScreen extends StatelessWidget {
  RadioScreen({super.key});

  final List<Widget> radios = [
    const BasicRadioButton(),
    const RadioButtonwithTextandStyles(),
    const RadioButtonwithCustomColor(),
    const RadioButtonwithHorizontalLayout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  radios.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: radios[index],
                      )),
            ),
          ]),
        ),
      ),
    );
  }
}
