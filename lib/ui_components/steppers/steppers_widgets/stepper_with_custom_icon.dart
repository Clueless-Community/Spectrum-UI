import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class StepperwihCustomIcon extends StatefulWidget {
  const StepperwihCustomIcon({super.key});

  @override
  State<StepperwihCustomIcon> createState() => _StepperwihCustomIconState();
}

class _StepperwihCustomIconState extends State<StepperwihCustomIcon> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Stepper with Right Icons",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        Stepper(
          currentStep: _currentStep,
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
          onStepCancel: () {
            setState(() {
              _currentStep == 0 ? _currentStep : _currentStep--;
            });
          },
          onStepContinue: () {
            setState(() {
              _currentStep == 2 ? _currentStep : _currentStep++;
            });
          },
          steps: [
            Step(
              title: Text('Step 1'),
              content: Text('This is the content of Step 1.'),
              isActive: _currentStep >= 0,
              state:
                  _currentStep >= 0 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text('Step 2'),
              content: Text('This is the content of Step 2.'),
              isActive: _currentStep >= 1,
              state:
                  _currentStep >= 1 ? StepState.complete : StepState.disabled,
            ),
            Step(
              title: Text('Step 3'),
              content: Text('This is the content of Step 3.'),
              isActive: _currentStep >= 2,
              state:
                  _currentStep >= 2 ? StepState.complete : StepState.disabled,
            ),
          ],
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return Row(
              children: [
                ElevatedButton(
                  onPressed: details.onStepContinue,
                  child: const Text('NEXT'),
                ),
                const SizedBox(width: 16.0),
                TextButton(
                  onPressed: details.onStepCancel,
                  child: const Text('PREVIOUS'),
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
