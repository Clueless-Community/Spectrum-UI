import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom_Navbar6 extends StatefulWidget {
  const Bottom_Navbar6({super.key});

  @override
  State<Bottom_Navbar6> createState() => _Bottom_Navbar6State();
}

class _Bottom_Navbar6State extends State<Bottom_Navbar6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.deepPurple,
          color: Colors.deepPurple.shade200,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            // perform operation as per your reqirement
            print(index);
          },
          items: const [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Icon(
              Icons.mail,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
          ]),
    );
  }
}
