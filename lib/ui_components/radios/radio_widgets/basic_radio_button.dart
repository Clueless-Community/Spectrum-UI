import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BasicRadioButton extends StatefulWidget {
  const BasicRadioButton({super.key});

  @override
  State<BasicRadioButton> createState() => _BasicRadioButtonState();
}

class _BasicRadioButtonState extends State<BasicRadioButton> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Basic Radio Button",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Option 1'),
          leading: Radio(
            value: 0,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Option 2'),
          leading: Radio(
            value: 1,
            groupValue: _selectedOption,
            onChanged: (value) {
              setState(() {
                _selectedOption = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
