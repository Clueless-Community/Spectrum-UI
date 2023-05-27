import 'package:flutter/material.dart';

class FifthCard extends StatelessWidget {
  const FifthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
          color: Colors.black,
          child: Column(
            children: [
              Image.asset('assets/card_image/cardo.png'),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
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
                          color:Colors.cyan),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The European Union(EU) is a political and economic union of 27 European countries. It aims to promote cooperation.....",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        CircleAvatar(),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ralph Edward",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color:Colors.cyan,
                                fontSize: 17
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("April 22, 2022", style: TextStyle(color: Colors.grey),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),

              // Text(data)
            ],
          ),
        );
  }
}