import 'package:flutter/material.dart';

class InputField2 extends StatelessWidget {
  const InputField2({super.key, required this.hinttext, required this.label});
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
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: hinttext,
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 13),
                      border: InputBorder.none
                      // enabledBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.black, width: 1.0),
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
