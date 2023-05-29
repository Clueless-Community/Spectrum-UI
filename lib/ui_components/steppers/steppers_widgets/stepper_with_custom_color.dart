import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class StepperwithCustomColor extends StatefulWidget {
  const StepperwithCustomColor({super.key});

  @override
  State<StepperwithCustomColor> createState() => _StepperwithCustomColorState();
}

class _StepperwithCustomColorState extends State<StepperwithCustomColor> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Stepper with Custom Color",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        Stepper(
          currentStep: _currentStep,
          controlsBuilder: (BuildContext context, ControlsDetails details) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: details.onStepCancel,
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: details.onStepContinue,
                  child: const Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            );
          },
          onStepContinue: () {
            setState(() {
              if (_currentStep < 2) {
                _currentStep += 1;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (_currentStep > 0) {
                _currentStep -= 1;
              }
            });
          },
          steps: [
            Step(
              title: Text('Step 1'),
              content: Text('This is the content for Step 1'),
              isActive: _currentStep == 0,
            ),
            Step(
              title: Text('Step 2'),
              content: Text('This is the content for Step 2'),
              isActive: _currentStep == 1,
            ),
            Step(
              title: Text('Step 3'),
              content: Text('This is the content for Step 3'),
              isActive: _currentStep == 2,
            ),
          ],
        ),
      ],
    );
  }
}
