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
      padding: EdgeInsets.only(top: 43),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 80,
              margin: EdgeInsets.only(bottom: 25),
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            Text(
              "Title",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
            Divider(
              height: 40,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
