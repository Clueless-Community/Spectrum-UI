// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;
  const TextFormFieldWidget({
    super.key,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 37, 43, 57).withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
          bottomLeft: Radius.circular(50.0),
          bottomRight: Radius.circular(50.0),
        ),
      ),
      child: TextFormField(
        style: const TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 112, 102, 134),
        ),
        cursorColor: const Color.fromARGB(255, 112, 102, 134),
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText!,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Color.fromARGB(255, 112, 102, 134),
            fontWeight: FontWeight.w500,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
