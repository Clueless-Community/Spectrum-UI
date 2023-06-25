import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  List friends = [
    Friend("First", Colors.purple, false),
    Friend("Second", Colors.cyan, false),
    Friend("Third", Colors.blue, false),
  ];
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 4,
      children: getFilteredFriend(),
    );
  }

  List<Widget> getFilteredFriend() {
    List<Widget> chips = [];
    for (int i = 0; i < friends.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 4,
        ),
        child: FilterChip(
          label: Text(friends[i].label),
          labelStyle: const TextStyle(color: Colors.white),
          backgroundColor: friends[i].color,
          selected: friends[i].isSelected,
          onSelected: (value) {
            setState(() {
              friends[i].isSelected = value;
            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}

class Friend {
  String label;
  Color color;
  bool isSelected;
  Friend(this.label, this.color, this.isSelected);
}
