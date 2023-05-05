import 'package:flutter/material.dart';

class Avatar2 extends StatelessWidget {
  const Avatar2(
      {super.key,
      required this.size,
      required this.text,
      required this.backgroundColor});
  final double size;
  final Text text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: text,
      ),
    );
  }
}
