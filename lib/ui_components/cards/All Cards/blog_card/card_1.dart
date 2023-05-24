import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Column(
          children: [
            Image.asset('assets/card_image/cardo.png'),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Politics",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "EU funds won't be conditional upon European Values",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromARGB(255, 50, 111, 161)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The European Union(EU) is a political and economic union of 27 European countries. It aims to promote cooperation.....",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [
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
                          Text("April 22, 2022")
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
