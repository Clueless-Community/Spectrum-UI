import 'package:flutter/material.dart';


class RadioButtonwithTextandStyles extends StatefulWidget {
  const RadioButtonwithTextandStyles({super.key});

  @override
  State<RadioButtonwithTextandStyles> createState() =>
      _RadioButtonwithTextandStylesState();
}

class _RadioButtonwithTextandStylesState
    extends State<RadioButtonwithTextandStyles> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Radio Button with Tile Color and Gesture",
            style:  Theme.of(context).textTheme.displayLarge
          ),
        ),
        const SizedBox(height: 10),
        RadioListTile(
          tileColor: Colors.indigo,
          title: const Text('Option 1'),
          value: 0,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
        const SizedBox(
          height: 3,
        ),
        RadioListTile(
          tileColor: Colors.indigo,
          title: const Text('Option 2'),
          value: 1,
          groupValue: _selectedOption,
          onChanged: (value) {
            setState(() {
              _selectedOption = value!;
            });
          },
        ),
      ],
    );
  }
}
