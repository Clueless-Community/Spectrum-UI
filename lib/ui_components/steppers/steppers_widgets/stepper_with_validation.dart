import 'package:flutter/material.dart';



class StepperwithValidation extends StatefulWidget {
  const StepperwithValidation({super.key});

  @override
  State<StepperwithValidation> createState() => _StepperwithValidationState();
}

class _StepperwithValidationState extends State<StepperwithValidation> {
  int _currentStep = 0;
  final List<bool> _isStepValid = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Stepper with Validation",
            style: Theme.of(context).textTheme.displayLarge
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
              title: const Text('Step 1'),
              content: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Name'),
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
              title: const Text('Step 2'),
              content: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Email'),
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
              title: const Text('Step 3'),
              content: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Address'),
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
