import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1(
      {super.key,
      required this.activeColor,
      required this.inactiveColor,
      required this.maxRange});
  final Color activeColor;
  final Color inactiveColor;
  final double maxRange;

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Slider(
        activeColor: widget.activeColor,
        inactiveColor: widget.inactiveColor,
        // mouseCursor: MouseCursor.defer,
        value: _currentSliderValue,
        max: widget.maxRange,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
      Text(
        _currentSliderValue.toInt().toString(),
        style: const TextStyle(fontSize: 16),
      )
    ]);
  }
}
