import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegmentedControlWidget extends StatefulWidget {
  const SegmentedControlWidget({super.key, required this.choices});
  final Map<int, Widget> choices;
  @override
  State<SegmentedControlWidget> createState() => _SegmentedControlWidgetState();
}

class _SegmentedControlWidgetState extends State<SegmentedControlWidget> {
  Color selected = const Color.fromRGBO(21, 22, 117, 0.8);

  int? value;
  Color? color;
  Color? bgcolor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      selected = const Color.fromRGBO(0, 194, 203, 1);
      bgcolor = Colors.blueGrey[900];
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: bgcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: Color.fromARGB(1, 1, 1, 0),
          thumbColor: selected,
          padding: const EdgeInsets.all(6),
          groupValue: value,
          children: widget.choices,
          onValueChanged: (value) {
            setState(() {
              this.value = value;
            });
          },
        ),
      ),
    );
  }
}

Widget buildSegment(String text, Color? color) => Container(
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
