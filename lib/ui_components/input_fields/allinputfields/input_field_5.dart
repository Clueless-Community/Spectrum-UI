import 'package:flutter/material.dart';

class InputField_5 extends StatelessWidget {
  const InputField_5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            width: 200,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.red,
                    width: 2,
                  )),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Hint Text", border: InputBorder.none
                          // enabledBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(
                          //       width: 2, color: Colors.red), //<-- SEE HERE
                          // ),
                          ),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
