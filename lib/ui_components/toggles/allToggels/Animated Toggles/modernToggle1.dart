import 'package:flutter/material.dart';

class CustomToggleButton4 extends StatefulWidget {
  const CustomToggleButton4({Key? key}) : super(key: key);

  @override
  _CustomToggleButton4State createState() => _CustomToggleButton4State();
}

class _CustomToggleButton4State extends State<CustomToggleButton4> {
  bool _isToggled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isToggled = !_isToggled;
        });
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.only(left: 140, right: 140),
        duration: const Duration(milliseconds: 200),
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: _isToggled ? Colors.blue : Colors.grey,
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 300),
              alignment:
                  _isToggled ? Alignment.centerRight : Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
