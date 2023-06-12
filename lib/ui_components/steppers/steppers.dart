import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/basic_stepper.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_custom_color.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_custom_icon.dart';
import 'package:flutter_component_ui/ui_components/steppers/steppers_widgets/stepper_with_validation.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';

class StepperScreen extends StatefulWidget {
  StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  final List<Widget> steppers = [
    const BasicStepper(),
    const StepperwihCustomIcon(),
    const StepperwithValidation(),
    const StepperwithCustomColor(),
  ];

  List<int> stepperIndex = [70, 71, 72, 73];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  stepperIndex.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          width: double.infinity,
                          child: steppers[index],
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
                                  favProviderModel.add(stepperIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(stepperIndex[index]))
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
      ),
    );
  }
}
