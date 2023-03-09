import 'package:flutter/material.dart';

class SixthCard extends StatelessWidget {
  const SixthCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Card(
        child: SizedBox(
          width: 350,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 200,
                color: Colors.black,
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5,top: 5),
                        child: Text(
                          "POLITICS",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child:  Text(
                          "EU funds won't we conditional upon Europen Values",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "The European Union is a political and economic Union of 27 European countries. It does not aims to promote coopera....",
                          style: TextStyle(color: Colors.grey, fontSize: 9),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: Row(children: [
                          const CircleAvatar(radius: 12,),
                          const SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                            Text("Ralph Edwards", style: TextStyle(color: Colors.cyan, fontSize: 12),),
                            Text("April 22, 2022",style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ],)
                        ],),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 150,
                // color: Colors.black,
                child: Image.asset('assets/card_image/cardo.png'),
              )
            ],
          ),
        ),
    );
  }
}
