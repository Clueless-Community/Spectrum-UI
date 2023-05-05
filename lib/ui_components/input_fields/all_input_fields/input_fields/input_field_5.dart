import 'package:flutter/material.dart';

class InputField5 extends StatelessWidget {
  const InputField5({super.key, required this.hinttext, required this.label});
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
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.red,
                  width: 2,
                )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: hinttext,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
