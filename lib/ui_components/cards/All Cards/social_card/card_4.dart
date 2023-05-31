import 'package:flutter/material.dart';

class FourthCard extends StatelessWidget {
  const FourthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 5,
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width / 1.1,
            padding:
                const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
            child: Column(
              children: [
                const Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Post",
                          style: TextStyle(
                              color: Color.fromARGB(
                                255,
                                133,
                                131,
                                131,
                              ),
                              fontSize: 18),
                        ),
                        Text(
                          "200",
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 111, 161),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text("Followers",
                            style: TextStyle(
                                color: Color.fromARGB(255, 133, 131, 131),
                                fontSize: 18)),
                        Text(
                          "1920",
                          style: TextStyle(
                              color: Color.fromARGB(255, 50, 111, 161),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text("Following",
                            style: TextStyle(
                                color: Color.fromARGB(255, 133, 131, 131),
                                fontSize: 18)),
                        Text(
                          "303",
                          style: TextStyle(
                              color: Color.fromARGB(255, 50, 111, 161),
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                 const Row(
                  children: [
                    Text(
                      "Roshan Kumar",
                      style: TextStyle(
                          color: Color.fromARGB(255, 50, 111, 161),
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.verified,
                      size: 18,
                      color: Colors.amber,
                    )
                  ],
                ),

                 const Row(
                  children: [
                    Text(
                      "@HSmith78",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                 const Row(
                  children: [
                    Text(
                      "Hey I'm Henry",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 50, 111, 161),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.waving_hand,
                      color: Colors.amber,
                      size: 18,
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.color_lens,
                      color: Colors.amber,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "UX Designer",
                      style: TextStyle(
                          color: Color.fromARGB(255, 50, 111, 161),
                          fontSize: 16 ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.baby_changing_station,
                      color: Colors.brown,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Proud Dad",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 50, 111, 161),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color.fromARGB(255, 195, 253, 129),
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Avid Tennis Player",
                      style: TextStyle(
                          color: Color.fromARGB(255, 50, 111, 161),
                          fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                 const Row(
                   children: [
                    SizedBox(
                      // width: double.infinity,
                      width: 90,
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 12,
                          ),
                          Positioned(
                              left: 12,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.amber,
                              )),
                          Positioned(
                              left: 25,
                              child: CircleAvatar(
                                radius: 12,
                              )),
                          Positioned(
                              left: 38,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.amber,
                              )),
                          Positioned(
                              left: 53,
                              child: CircleAvatar(
                                radius: 12,
                              )),
                        ],
                      ),
                    ),
                    Text(
                      "Followed by ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 50, 111, 161,), fontSize: 10),
                    ),
                    Text(
                      "Sambam94",
                      style: TextStyle(
                          color: Color.fromARGB(255, 50, 111, 161),
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      " and ",
                      style:
                          TextStyle(color: Color.fromARGB(255, 50, 111, 161), fontSize: 10),
                    ),
                    Text(
                      "21 other",
                      style:
                          TextStyle(color: Color.fromARGB(255, 50, 111, 161), fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 50, 111, 161)),
                        child: const Text(
                          "Follow",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text(
                          "Message",
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 112, 150)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white),
                          child: const Icon(
                            Icons.person_add_outlined,
                            color: Colors.black,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
