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
  Color color = const Color.fromARGB(255, 251, 250, 250);
  Color bgcolor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      selected = const Color.fromRGBO(0, 194, 203, 1);
      bgcolor = const Color.fromRGBO(38, 50, 56, 1);
    } else {
      selected = const Color.fromRGBO(21, 22, 117, 0.8);
      bgcolor = const Color.fromARGB(255, 251, 250, 250);
    }
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: CupertinoSlidingSegmentedControl<int>(
          backgroundColor: bgcolor,
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
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
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
    );

class RadioChips extends StatefulWidget {
  final List<String> values;
  final int initialPosition;
  final Function(int index) onSelected;

  const RadioChips(
      {super.key,
      required this.values,
      required this.onSelected,
      this.initialPosition = -1});

  @override
  // ignore: library_private_types_in_public_api
  _RadioChipsState createState() => _RadioChipsState();
}

class _RadioChipsState extends State<RadioChips> {
  int? current;

  @override
  void initState() {
    super.initState();
    current = widget.initialPosition;
  }

  Color selected = const Color.fromRGBO(21, 22, 117, 0.8);
  Color bgcolor = const Color.fromARGB(255, 251, 250, 250);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      selected = const Color.fromRGBO(0, 194, 203, 1);
      bgcolor = const Color.fromRGBO(38, 50, 56, 1);
    } else {
      selected = const Color.fromRGBO(21, 22, 117, 0.8);
      bgcolor = const Color.fromARGB(255, 251, 250, 250);
    }
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            widget.values.length,
            (index) {
              return GestureDetector(
                onTap: () async {
                  setState(() => current = index);
                  widget.onSelected(index);
                },
                child: Container(
                  height: 36,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(18)),
                    color: index == current ? selected : bgcolor,
                  ),
                  child: Text(
                    widget.values[index],
                    style: index == current
                        ? const TextStyle(color: Colors.white, fontSize: 17)
                        : !isDarkMode
                            ? const TextStyle(color: Colors.black, fontSize: 17)
                            : const TextStyle(
                                color: Colors.white, fontSize: 17),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class RectangularSelections extends StatefulWidget {
  final List<String> values;
  final int initialPosition;
  final Function(int index) onSelected;

  const RectangularSelections(
      {super.key,
      required this.values,
      required this.onSelected,
      this.initialPosition = -1});

  @override
  // ignore: library_private_types_in_public_api
  _RectangularSelectionsState createState() => _RectangularSelectionsState();
}

class _RectangularSelectionsState extends State<RectangularSelections> {
  int? current;

  @override
  void initState() {
    super.initState();
    current = widget.initialPosition;
  }

  Color selected = const Color.fromRGBO(21, 22, 117, 0.8);
  Color bgcolor = const Color.fromARGB(255, 251, 250, 250);

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    if (isDarkMode) {
      selected = const Color.fromRGBO(0, 194, 203, 1);
      bgcolor = const Color.fromRGBO(38, 50, 56, 1);
    } else {
      selected = const Color.fromRGBO(21, 22, 117, 0.8);
      bgcolor = const Color.fromARGB(255, 251, 250, 250);
    }
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            widget.values.length,
            (index) {
              return GestureDetector(
                onTap: () async {
                  setState(() => current = index);
                  widget.onSelected(index);
                },
                child: Container(
                  height: 36,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    border: Border.all(
                        color: const Color.fromRGBO(189, 189, 189, 1)),
                    color: index == current ? selected : bgcolor,
                  ),
                  child: Text(
                    widget.values[index],
                    style: index == current
                        ? const TextStyle(color: Colors.white, fontSize: 17)
                        : !isDarkMode
                            ? const TextStyle(color: Colors.black, fontSize: 17)
                            : const TextStyle(
                                color: Colors.white, fontSize: 17),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
