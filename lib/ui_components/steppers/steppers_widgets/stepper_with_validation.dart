import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class StepperwithValidation extends StatefulWidget {
  const StepperwithValidation({super.key});

  @override
  State<StepperwithValidation> createState() => _StepperwithValidationState();
}

class _StepperwithValidationState extends State<StepperwithValidation> {
  int _currentStep = 0;
  List<bool> _isStepValid = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Stepper with Validation",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        Stepper(
          currentStep: _currentStep,
          onStepContinue: () {
            setState(() {
              if (_currentStep < 2 && _isStepValid[_currentStep]) {
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
              content: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    onChanged: (value) {
                      setState(() {
                        _isStepValid[0] = value.isNotEmpty;
                      });
                    },
                  ),
                ],
              ),
              isActive: _currentStep == 0,
              state: _isStepValid[0] ? StepState.complete : StepState.error,
            ),
            Step(
              title: Text('Step 2'),
              content: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    onChanged: (value) {
                      setState(() {
                        _isStepValid[1] = value.isNotEmpty;
                      });
                    },
                  ),
                ],
              ),
              isActive: _currentStep == 1,
              state: _isStepValid[1] ? StepState.complete : StepState.error,
            ),
            Step(
              title: Text('Step 3'),
              content: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Address'),
                    onChanged: (value) {
                      setState(() {
                        _isStepValid[2] = value.isNotEmpty;
                      });
                    },
                  ),
                ],
              ),
              isActive: _currentStep == 2,
              state: _isStepValid[2] ? StepState.complete : StepState.error,
            ),
          ],
        ),
      ],
    );
  }
}
