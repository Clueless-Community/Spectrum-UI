import 'package:flutter/material.dart';

class ToggelButton2 extends StatefulWidget {
  const ToggelButton2({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ToggelButton2State createState() => _ToggelButton2State();
}

class _ToggelButton2State extends State<ToggelButton2> {
  bool _isToggled = false;
  bool _toggled = false;
  bool _toggle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.scale(
                  scale: 1.5, // Increase this value to adjust the size
                  child: Switch(
                    value: _isToggled,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    activeColor: Colors.blue[800],
                    inactiveThumbColor: Colors.grey[300],
                    onChanged: (value) {
                      setState(() {
                        _isToggled = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.5, // Increase this value to adjust the size
                  child: Switch(
                    value: _toggled,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    activeColor: Colors.purple[600],
                    inactiveThumbColor: Colors.grey[300],
                    onChanged: (value) {
                      setState(() {
                        _toggled = value;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Transform.scale(
                  scale: 1.5, // Increase this value to adjust the size
                  child: Switch(
                    value: _toggle,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    activeColor: Colors.red[800],
                    inactiveThumbColor: Colors.grey[300],
                    onChanged: (value) {
                      setState(() {
                        _toggle = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
