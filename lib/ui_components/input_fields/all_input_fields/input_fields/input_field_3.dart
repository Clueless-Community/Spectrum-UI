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
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Builder(
              builder: (context) {
                final isDarkMode = MediaQuery.of(context).platformBrightness ==
                    Brightness.dark;
                final _fillColor = isDarkMode ? Colors.black : Colors.white;

                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).brightness != Brightness.dark
                          ? Colors.white
                          : Colors.black87,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: _fillColor == Colors.white
                              ? Colors.grey
                              : Color(0xffB4D7F8),
                          spreadRadius: 7,
                          blurRadius: 10)
                    ],
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: _fillColor,
                      border: InputBorder.none,
                      hintText: hinttext,
                      contentPadding: EdgeInsets.only(left: 15),
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 13),
                      // enabledBorder: OutlineInputBorder()
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
