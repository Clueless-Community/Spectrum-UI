import 'package:flutter/material.dart';

class InputField4 extends StatelessWidget {
  const InputField4({super.key, required this.hinttext, required this.label});
  final String hinttext;
  final String label;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: width - 20,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: hinttext,
                hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
