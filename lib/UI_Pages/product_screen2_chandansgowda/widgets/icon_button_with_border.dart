import 'package:flutter/material.dart';

class IconButtonWithBorder extends StatelessWidget {
  final EdgeInsets padding;
  final IconData icon;

  const IconButtonWithBorder({super.key,
    required this.icon,
    required this.padding
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: Colors.white,
          side: const BorderSide(
              width: 1,
              color: Color.fromRGBO(61, 128, 175, 1)),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ))),
      child: Icon(icon, color: const Color.fromRGBO(61, 128, 175, 1),),
    );
  }
}