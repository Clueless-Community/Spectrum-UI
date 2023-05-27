import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/basic_stepper.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_custom_color.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_custom_icon.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_validation.dart';

import '../../theme/theme.dart';

class StepperScreen extends StatelessWidget {
  StepperScreen({super.key});
  final List<Widget> steppers = [
    const BasicStepper(),
    const StepperwihCustomIcon(),
    const StepperwithValidation(),
    const StepperwithCustomColor(),
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
                  steppers.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: steppers[index],
                      )),
            ),
          ]),
        ),
      ),
    );
  }
}
