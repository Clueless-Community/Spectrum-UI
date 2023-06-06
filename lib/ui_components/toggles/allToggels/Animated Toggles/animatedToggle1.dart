import 'package:flutter/material.dart';

class CustomToggleButton3 extends StatefulWidget {
  const CustomToggleButton3({Key? key}) : super(key: key);

  @override
  _CustomToggleButton3State createState() => _CustomToggleButton3State();
}

class _CustomToggleButton3State extends State<CustomToggleButton3> {
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
        // margin: const EdgeInsets.only(left: 20, right: 20),
        duration: const Duration(milliseconds: 200),
        width: 80,
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
                  child: _isToggled
                      ? const Icon(
                          Icons.light_mode,
                          color: Colors.blue,
                          size: 20,
                        )
                      : const Icon(
                          Icons.nightlight_round,
                          color: Colors.grey,
                          size: 20,
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
