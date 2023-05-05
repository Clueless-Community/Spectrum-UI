import 'package:flutter/material.dart';

class TextArea2 extends StatelessWidget {
  const TextArea2({super.key, required this.label, required this.hinttext});
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
                border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: hinttext,
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 13),
                    border: InputBorder.none,
                    // border: OutlineInputBorder(
                    //   borderSide: BorderSide(color: Colors.black),
                    // ),
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
