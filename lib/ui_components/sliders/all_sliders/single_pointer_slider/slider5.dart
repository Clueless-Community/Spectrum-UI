import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_core/theme.dart';

class Slider5 extends StatefulWidget {
  const Slider5(
      {super.key,
      required this.activeColor,
      required this.inactiveColor,
      required this.maxRange});
  final Color activeColor;
  final Color inactiveColor;
  final double maxRange;
  @override
  State<Slider5> createState() => _Slider5State();
}

class _Slider5State extends State<Slider5> {
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
            tooltipBackgroundColor: Colors.grey,
            activeTrackColor: widget.activeColor,
            inactiveTrackColor: widget.inactiveColor,
            activeLabelStyle: const TextStyle(
              color: Colors.greenAccent,
              fontSize: 16,
            ),
            inactiveLabelStyle: const TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontStyle: FontStyle.italic,
            ),
          ),
          child: SfSlider(
            min: 0.0,
            max: widget.maxRange,
            value: _currentSliderValue,
            interval: 20,
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
        Text(
          _currentSliderValue.toInt().toString(),
          style: const TextStyle(fontSize: 16),
        )
      ],
    );
  }
}
