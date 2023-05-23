import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class RadioButtonwithCustomColor extends StatefulWidget {
  const RadioButtonwithCustomColor({super.key});

  @override
  State<RadioButtonwithCustomColor> createState() =>
      _RadioButtonwithCustomColorState();
}

class _RadioButtonwithCustomColorState
    extends State<RadioButtonwithCustomColor> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Radio Button with Custom Colors",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        RadioListTile(
          title: const Text('Option 1'),
          value: 0,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
          activeColor: Colors.green,
          selected: _selectedOption == 0,
        ),
        RadioListTile(
          title: const Text('Option 2'),
          value: 1,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
          activeColor: Colors.blue,
          selected: _selectedOption == 1,
        ),
      ],
    );
  }
}
