import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BasicStepper extends StatefulWidget {
  const BasicStepper({super.key});

  @override
  State<BasicStepper> createState() => _BasicStepperState();
}

class _BasicStepperState extends State<BasicStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Basic Stepper",
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
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('This is the content of Step 1.'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('This is the content of Step 2.'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('This is the content of Step 3.'),
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
