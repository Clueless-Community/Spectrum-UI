import 'package:flutter/material.dart';

class TextArea1 extends StatelessWidget {
  const TextArea1({super.key, required this.label, required this.hinttext});
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
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: width - 20,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: TextField(
              maxLines: 5,
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
