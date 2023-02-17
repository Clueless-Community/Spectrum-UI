import 'package:flutter/material.dart';

class InputField_2 extends StatelessWidget {
  // const InputField_2({Key? key}) : super(key: key);
  const InputField_2({required this.hinttext});
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
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: hinttext,
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
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
      ),
    );
  }
}
