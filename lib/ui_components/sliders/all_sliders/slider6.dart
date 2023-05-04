import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart';

class Slider6 extends StatefulWidget {
  const Slider6(
      {super.key,
      required this.activeColor,
      required this.inactiveColor,
      required this.maxRange});
  final Color activeColor;
  final Color inactiveColor;
  final double maxRange;
  @override
  State<Slider6> createState() => _Slider6State();
}

class _Slider6State extends State<Slider6> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SfSliderTheme(
          data: SfSliderThemeData(
            inactiveTrackHeight: 10,
            thumbRadius: 15,
            thumbColor: Colors.blue,
            activeTrackColor: widget.activeColor,
            inactiveTrackColor: widget.inactiveColor,
            activeTrackHeight: 20,
            inactiveTickColor: Colors.orange,
            activeTickColor: Colors.white,
            tooltipBackgroundColor: Colors.orange,
            activeLabelStyle: const TextStyle(
              color: Colors.greenAccent,
              fontSize: 18,
            ),
            inactiveLabelStyle: const TextStyle(
              color: Colors.red,
              fontSize: 15,
              fontStyle: FontStyle.italic,
            ),
          ),
          child: SfSlider(
            min: 0.0,
            max: widget.maxRange,
            value: _currentSliderValue,
            interval: 10,
            showTicks: true,
            showLabels: true,
            tooltipShape: const SfPaddleTooltipShape(),
            enableTooltip: true,
            minorTicksPerInterval: 1,
            onChanged: (dynamic value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          _currentSliderValue.toInt().toString(),
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
