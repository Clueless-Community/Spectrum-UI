import 'package:flutter/material.dart';

class SeventhCard extends StatelessWidget {
  const SeventhCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black,
      elevation: 7,
      child: Container(
        // height: 170,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 25,
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
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
             const Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 7,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children:[
                      Text(
                      "Ralph Edward",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.cyan,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(Icons.verified, color: Colors.white,size: 13,),
                     SizedBox(width: 5,),
                    Text("verified customer", style: TextStyle(color: Colors.grey),)

                    ],),

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