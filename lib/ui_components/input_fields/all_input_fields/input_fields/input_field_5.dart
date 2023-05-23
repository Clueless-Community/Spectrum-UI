import 'package:flutter/material.dart';

class InputField5 extends StatefulWidget {
  const InputField5({super.key, required this.hinttext, required this.label});
  final String hinttext;
  final String label;

  @override
  State<InputField5> createState() => _InputField5State();
}

class _InputField5State extends State<InputField5> {
  var _passVisible = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
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
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Colors.grey,
                  ),
                  hintText: widget.hinttext,
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      _passVisible = !_passVisible;
                    }),
                    child: Icon(!_passVisible
                        ? Icons.visibility_rounded
                        : Icons.visibility_off_rounded),
                  ),
                ),
                obscureText: !_passVisible,
                // onTapOutside: (event) => Focus.of(context).unfocus(),
                validator: (value) {
                  return value.toString().isEmpty ? "Required Field" : null;
                },
                onTapOutside: (event) => setState(() {
                  _passVisible = false;
                }),
                onFieldSubmitted: (event) => setState(() {
                  _passVisible = false;
                }),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
