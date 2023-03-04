import 'package:flutter/material.dart';

class Avatar3 extends StatelessWidget {
  const Avatar3({super.key, required this.size, required this.icon, required this.backgroundColor});
  final double size;
  final Icon icon;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Icon Avatar',
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
          child: icon,
        )
      ],
    );
  }
}