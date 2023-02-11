import 'package:flutter/material.dart';

import 'All Avatars/avatar1.dart';
import 'All Avatars/avatar2.dart';
import 'All Avatars/avatar3.dart';

class AvatarScreen extends StatelessWidget {
  AvatarScreen({super.key});

  final List<Widget> avatars = [
    const Avatar1(size: 100, imagePath: 'assets/bored.png'),
    const Avatar2(
      size: 100,
      text: Text(
        'AZ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      backgroundColor: Colors.black,
    ),
    const Avatar3(
      size: 100,
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 50,
      ),
      backgroundColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: avatars[index],
          );
        },
        itemCount: avatars.length,
      ),
    );
  }
}