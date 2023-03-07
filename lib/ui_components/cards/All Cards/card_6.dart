import 'package:flutter/material.dart';

class SixthCard extends StatelessWidget {
  const SixthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          color: Colors.black,
          height: 168,
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 12,),
                    const Text(
                      "Politics",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 172.6,
                      child: Text(
                        "EU funds won't be conditional upon European Values",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Colors.cyan),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      width: 172.6,
                      child: Text(
                        "The European Union(EU) is a political and economic union of 27 European countries. It aims to promote cooperation.....",
                        style: TextStyle(color: Colors.grey,fontSize: 9),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Ralph Edwards",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.cyan,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text("April 22, 2022", style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/card_image/cardo.png',
                height: 200,
                width: 200,
              ),
            ],
          ),
        );
  }
}
