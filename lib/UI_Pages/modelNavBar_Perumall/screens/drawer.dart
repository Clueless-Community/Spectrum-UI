// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class drawerheader extends StatefulWidget {
  const drawerheader({super.key});

  @override
  State<drawerheader> createState() => _drawerheaderState();
}

class _drawerheaderState extends State<drawerheader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 260,
      padding: const EdgeInsets.only(top: 43),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              margin: const EdgeInsets.only(bottom: 25),
              height: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const Text(
              "Title",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "hello@uikit.co",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 30,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 40,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
