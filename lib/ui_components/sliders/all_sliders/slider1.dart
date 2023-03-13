import 'package:flutter/material.dart';

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      Slider(
        activeColor: Colors.cyan,
        inactiveColor: Colors.black,
        // mouseCursor: MouseCursor.defer,
        value: _currentSliderValue,
        max: 100,
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
        style: const TextStyle(fontSize: 18),
      )
    ]);
  }
}
