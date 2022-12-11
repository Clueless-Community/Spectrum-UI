import 'package:flutter/material.dart';

class IconButtonWithBorder extends StatelessWidget {
  final EdgeInsets padding;
  final IconData icon;

  IconButtonWithBorder({
    required this.icon,
    required this.padding
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Icon(icon, color: Color.fromRGBO(61, 128, 175, 1),),
      style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: Colors.white,
          side: BorderSide(
              width: 1,
              color: Color.fromRGBO(61, 128, 175, 1)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ))),
    );
  }
}