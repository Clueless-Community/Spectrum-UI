import 'package:flutter/material.dart';

class InputLables extends StatefulWidget {
  const InputLables({Key? key}) : super(key: key);

  @override
  State<InputLables> createState() => _InputLablesState();
}

class _InputLablesState extends State<InputLables> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputChip(
            padding: const EdgeInsets.all(2.0),
            avatar: const CircleAvatar(
              backgroundColor: Colors.white38,
              child: Text(
                'JD',
                style: TextStyle(color: Colors.black45),
              ),
            ),
            label: const Text(
              'Jane Doe',
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: isDarkMode ? Colors.grey[600] : Colors.purple[400],
            selected: _isSelected,
            selectedColor: Colors.blue.shade600,
            onSelected: (bool selected) {
              setState(() {
                _isSelected = selected;
              });
            },
            onDeleted: () {},
          ),
        ],
      ),
    );
  }
}
