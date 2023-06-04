import 'package:flutter/material.dart';

class EightCard extends StatelessWidget {
  const EightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.black,
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
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
                          color: Colors.white,
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
                            color: Colors.white,
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
                            color: Colors.white,
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
                    style: TextStyle(color: Colors.cyan, fontSize: 18),
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
              const SizedBox(
                height: 3,
              ),
               const Row(
                children: [
                  Text(
                    "@HSmith78",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
               const Row(
                children: [
                  Text(
                    "Hey I'm Henry",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.waving_hand,
                    color: Colors.amber,
                    size: 16,
                  )
                ],
              ),
               const Row(
                children: [
                  Icon(
                    Icons.color_lens,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "UX Designer",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
               const Row(
                children: [
                  Icon(
                    Icons.baby_changing_station,
                    color: Colors.brown,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Proud Dad",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
               const Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Color.fromARGB(255, 195, 253, 129),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Avid Tennis Player",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              const Row(
                children: [
                  SizedBox(
                    // width: double.infinity,
                    width: 80,
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
                    "  Followed by ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "Sambam94",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " and ",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "21 other",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.cyan),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyan),
                          borderRadius: BorderRadius.circular(5)),
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Center(
                        child: Text(
                          "Message",
                          style: TextStyle(color: Colors.cyan),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 6.2,
                      height: 38,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.cyan),
                          borderRadius: BorderRadius.circular(5)),
                      // width: MediaQuery.of(context).size.width / 3,
                      child: const Center(
                          child: Icon(
                        Icons.person_add_outlined,
                        color: Colors.cyan,
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
