import 'package:flutter/material.dart';

class Slider3 extends StatefulWidget {
  const Slider3({super.key});

  @override
  State<Slider3> createState() => _Slider3State();
}

class _Slider3State extends State<Slider3> {
  double _currentSliderValue = 60;

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
      const SizedBox(
        height: 20,
      ),

      Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(
          _currentSliderValue.toInt().toString(),
          // textAlign: TextAlign.left ,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18
          ),
        ),
      ),
      Slider(
        activeColor: Colors.red,
        inactiveColor: Colors.white,
        value: _currentSliderValue,
        max: 100,
        divisions: 50,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    ]);
  }
}
