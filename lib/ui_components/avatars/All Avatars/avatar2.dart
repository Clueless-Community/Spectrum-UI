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
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Text Avatar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: text,
          ),
        ),
      ],
    );
  }
}