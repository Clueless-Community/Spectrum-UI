import 'package:flutter/material.dart';

class TextArea4 extends StatelessWidget {
  const TextArea4({super.key, required this.label, required this.hinttext});
  final String hinttext;
  final String label;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple, width: 2),borderRadius: BorderRadius.circular(5)
              ),
              height: 70,
              padding: EdgeInsets.only(left: 15),
              child: TextField(
                maxLines: null,
                decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  border: InputBorder.none,
                ),
                cursorOpacityAnimates: true,
                expands: true,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
