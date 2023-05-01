import 'package:flutter/material.dart';
import 'segmented_controls.dart';

class SegmentedControlScreen extends StatelessWidget {
  const SegmentedControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color? color;
    Map<int, Widget> choices = {
      0: buildSegment("week", color),
      1: buildSegment("Month", color),
      2: buildSegment("Year", color),
    };
    Map<int, Widget> choices1 = {
      0: buildSegment("Text", color),
      1: buildSegment("Text", color),
      2: buildSegment("Text", color),
    };
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SegmentedControlWidget(
              choices: choices1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SegmentedControlWidget(
              choices: choices,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: RadioChips(
              values: const ['Text', 'Text', 'Text'],
              onSelected: (index) {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: RectangularSelections(
              values: const ['Text', 'Text', 'Text'],
              onSelected: (index) {},
            ),
          ),
        ],
      ),
    );
  }
}
