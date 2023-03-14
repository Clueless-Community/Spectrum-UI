import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/segmented_controls/segmented_controls.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color? color;
    Map<int, Widget> choices = {
      0: buildSegment("week", color),
      1: buildSegment("Month", color),
      2: buildSegment("Year", color),
    };
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Favs Page",
            ),
          ),
          SegmentedControlWidget(
            choices: choices,
          ),
        ],
      ),
    );
  }
}
