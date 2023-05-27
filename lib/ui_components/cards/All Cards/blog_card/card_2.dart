import 'package:flutter/material.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 5, top: 2, bottom: 2),
                  height: (MediaQuery.of(context).size.width / 2.4) * 0.83,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width / 2.4 -
                      8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Politics",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      Text(
                        "EU funds won't be conditional upon European Values",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 54, 103, 144),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "The European Union (EU) is a political and economic union of 27 European countries. It aims to promote cooperation",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ralph Edwards",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 54, 103, 144)),
                                ),
                                Text(
                                  "April 22,2022",
                                  style: TextStyle(fontSize: 10, color: Colors.grey),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width/3.1,
            height: MediaQuery.of(context).size.width/2.6,
            child: Image.asset(
              'assets/card_image/cardo.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
