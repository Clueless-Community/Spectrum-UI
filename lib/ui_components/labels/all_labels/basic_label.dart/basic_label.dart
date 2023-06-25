import 'package:flutter/material.dart';

class BasicChipWidget extends StatelessWidget {
  const BasicChipWidget({
    Key? key,
    required this.basicChipLabel,
    required this.chipColor,
  }) : super(key: key);

  final String basicChipLabel;
  final Color chipColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      //   padding: EdgeInsets.symmetric(horizontal: 20),
      avatar: CircleAvatar(
        child: Text(basicChipLabel[0].toUpperCase()),
      ),
      label: Text(
        basicChipLabel,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: chipColor,
    );
  }
}
