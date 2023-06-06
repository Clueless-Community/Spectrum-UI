import 'package:flutter/material.dart';

class CustomToggleButton2 extends StatefulWidget {
  const CustomToggleButton2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomToggleButton2State createState() => _CustomToggleButton2State();
}

class _CustomToggleButton2State extends State<CustomToggleButton2> {
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
          color: Colors.blue,
        ),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Icon(
                  Icons.light_mode_outlined,
                  color: Colors.white,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.nights_stay_rounded,
                  color: Colors.white,
                ),
              ),
            ),
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
