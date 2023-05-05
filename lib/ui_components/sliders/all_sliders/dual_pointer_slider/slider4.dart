import 'package:flutter/material.dart';

class Slider4 extends StatefulWidget {
  const Slider4(
      {Key? key,
      required this.activeColor,
      required this.inactiveColor,
      required this.maxRange})
      : super(key: key);
  final Color activeColor;
  final Color inactiveColor;
  final double maxRange;
  @override
  State<Slider4> createState() => _Slider4State();
}

class _Slider4State extends State<Slider4> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
          ),
          width: 300,
          child: RangeSlider(
            activeColor: widget.activeColor,
            inactiveColor: widget.inactiveColor,
            values: _currentRangeValues,
            max: widget.maxRange,
            divisions: 100,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                _currentRangeValues.start.round().toString(),
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Text(
                _currentRangeValues.end.round().toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
