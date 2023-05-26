import 'package:flutter/material.dart';

class SixthCard extends StatelessWidget {
  const SixthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,

            child:Flexible(child:Card(

      child:  Expanded(child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            padding: const EdgeInsets.only(left: 5, top: 2, bottom: 2, right: 5),
            width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 2.4 - 32,

            child: Flexible(child:Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Politics",
                  style: TextStyle(fontSize: 10, color: Colors.grey),
                ),
              const Text(
                  "EU funds won't be conditional upon European Values",
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.cyan,
                      fontWeight: FontWeight.w500,),
                ),
                const Flexible(flex: 2,child:Text(
                  "The European Union (EU) is a political and economic union of 27 European countries. It aims to promote cooperation",
                  style: TextStyle(fontSize: 10, color: Colors.grey, overflow: TextOverflow.visible),
                ),),
                FittedBox(
                  fit: BoxFit.cover,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Ralph Edwards",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.cyan),
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
          ),),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2.4,
            child: Image.asset(
              'assets/card_image/cardo.png' ,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    ))));
  }
}
