import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class RadioButtonwithHorizontalLayout extends StatefulWidget {
  const RadioButtonwithHorizontalLayout({super.key});

  @override
  State<RadioButtonwithHorizontalLayout> createState() =>
      _RadioButtonwithHorizontalLayoutState();
}

class _RadioButtonwithHorizontalLayoutState
    extends State<RadioButtonwithHorizontalLayout> {
  int _selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Radio Button with Horizontal Layout",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: MyTheme.lightBluishColor,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: 0,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const Text('Option 1'),
              const SizedBox(width: 16),
              Radio(
                value: 1,
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const Text('Option 2'),
            ],
          ),
        ),
      ],
    );
  }
}
