import 'package:flutter/material.dart';

class Avatar3 extends StatelessWidget {
  const Avatar3(
      {super.key,
      required this.size,
      required this.icon,
      required this.backgroundColor});
  final double size;
  final Icon icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: icon,
        )
      ],
    );
  }
}
