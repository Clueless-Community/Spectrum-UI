import 'package:flutter/material.dart';

class CustomToggle extends StatefulWidget {
  const CustomToggle({super.key});

  @override
  State<CustomToggle> createState() => _CustomToggleState();
}

class _CustomToggleState extends State<CustomToggle> {
  final List<bool> _toggleList = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < _toggleList.length; i++) {
            _toggleList[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(2)),
      selectedBorderColor: const Color.fromRGBO(35, 73, 208, 1),
      selectedColor: Colors.white,
      fillColor: const Color.fromRGBO(40, 83, 237, 1),
      color: const Color.fromRGBO(102, 102, 102, 1),
      constraints: const BoxConstraints(
        minHeight: 50.0,
        minWidth: 60.0,
      ),
      isSelected: _toggleList,
      children: List.generate(
        _toggleList.length,
        (index) => Text("${index + 1}"),
      ),
    );
  }
}
