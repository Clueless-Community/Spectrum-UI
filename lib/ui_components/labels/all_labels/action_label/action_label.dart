import 'package:flutter/material.dart';

// ignore: camel_case_types
class ActionLabels extends StatefulWidget {
  const ActionLabels({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ActionLabelsState createState() => _ActionLabelsState();
}

// ignore: camel_case_types
class _ActionLabelsState extends State<ActionLabels> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Color iconColor = Colors.white;
    Color textColor = isDarkMode ? Colors.amberAccent : Colors.black;
    Color shapeBorderColor =
        isDarkMode ? Colors.amberAccent : Colors.blueAccent;

    return Scaffold(
      key: _key,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActionChip(
            elevation: 5.0,
            padding: const EdgeInsets.all(2.0),
            avatar: CircleAvatar(
              backgroundColor:
                  isDarkMode ? Colors.amberAccent : Colors.blue[800],
              child: Icon(
                Icons.phone,
                color: iconColor,
                size: 20,
              ),
            ),
            label: Text(
              ' Make a call',
              style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    'Calling...',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
            backgroundColor: isDarkMode ? Colors.grey[700] : Colors.grey[200],
            shape: StadiumBorder(
              side: BorderSide(
                width: 1,
                color: shapeBorderColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
