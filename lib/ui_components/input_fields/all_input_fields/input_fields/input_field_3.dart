import 'package:flutter/material.dart';

class InputField3 extends StatelessWidget {
  const InputField3({super.key, required this.hinttext, required this.label});
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
            child: Container(
              decoration: BoxDecoration(border: Border.all(), boxShadow: const [
                BoxShadow(
                    color: Color(0xffB4D7F8), spreadRadius: 7, blurRadius: 10)
              ]),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    hintText: hinttext,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 13),
                    // enabledBorder: OutlineInputBorder()
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
