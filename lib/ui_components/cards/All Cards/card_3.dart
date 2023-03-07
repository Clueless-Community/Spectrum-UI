import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 7,
      child: Container(
        height: 170,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.star_outline,
                  color: Colors.amber,
                  size: 30,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.amber,
                  size: 30,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.amber,
                  size: 30,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.amber,
                  size: 30,
                ),
                Icon(
                  Icons.star_outline,
                  color: Colors.amber,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.1,
              child: const Text(
                "I was ready to delete my account, but the customer service team reached out and helped me with my issues and i'm glad i gave them a chance and now i'm having a better experience on the platform. ",
                style: TextStyle(
                    color: Color.fromARGB(
                      255,
                      50,
                      111,
                      161,
                    ),
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const CircleAvatar(),
                const SizedBox(
                  width: 7,
                ),
                Column(
                  children: const [
                    Text(
                      "Ralph Edward",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 50, 111, 161),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "April 22, 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 128, 126, 126)),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
