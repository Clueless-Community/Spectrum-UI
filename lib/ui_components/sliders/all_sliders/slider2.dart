import 'package:flutter/material.dart';

class Slider2 extends StatefulWidget {
  const Slider2({super.key});

  @override
  State<Slider2> createState() => _Slider2State();
}

class _Slider2State extends State<Slider2> {
  double _currentSliderValue = 40;

  @override
  Widget build(BuildContext context) {
    return Column(
        children:  [
          const SizedBox(
            height: 20,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 10.0,
              trackShape: const RoundedRectSliderTrackShape(),
              activeTrackColor: const Color(0xFF005F99),
              inactiveTrackColor: Colors.purple.shade100,
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 14.0,
                pressedElevation: 8.0,
              ),
              thumbColor: Colors.blue,
              overlayColor: Colors.pink.withOpacity(0.2),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 32.0),
              tickMarkShape: const RoundSliderTickMarkShape(),
              activeTickMarkColor: Colors.cyan,
              inactiveTickMarkColor: Colors.white,
              valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
              valueIndicatorColor: Colors.white,
              valueIndicatorTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            child: Slider(
              min: 0.0,
              max: 100.0,
              value: _currentSliderValue,
              divisions: 10,
              label: '${_currentSliderValue.round()}',
              onChanged: (value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          )
        ]
    );
  }
}