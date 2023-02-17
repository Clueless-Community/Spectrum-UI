import 'package:flutter/material.dart';

class InputField_1 extends StatelessWidget {
  // const InputField_1({Key? key}) : super(key: key);
  const InputField_1({required this.hinttext});
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Label",
            style: TextStyle(
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
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
