// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassmorphismLoginScreen extends StatelessWidget {
  const GlassmorphismLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'AppBarScreen',
        home: Scaffold(
          body: Stack(
            children: [
              const Positioned(
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image(
                        image: AssetImage(
                            'assets/glassmorphism_ArpitSahu01/glassmorphismImage.jpg')),
                  ),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: GlassmorphicContainer(
                    width: 350,
                    height: 350,
                    blur: 10,
                    border: 2,
                    borderRadius: 20,
                    alignment: Alignment.bottomCenter,
                    linearGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFffffff).withOpacity(0.1),
                          const Color(0xFFFFFFFF).withOpacity(0.05),
                        ],
                        stops: const [
                          0.1,
                          1
                        ]),
                    borderGradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                      ],
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Text(
                              'WELCOME',
                              style: TextStyle(
                                  color: Colors.purple[700],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            const Spacer(),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(119, 227, 222, 223),
                              ),
                              child: TextField(
                                controller: null,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Username',
                                    icon: Icon(
                                      Icons.person,
                                      color: Colors.purple[700],
                                    )),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(119, 227, 222, 223),
                              ),
                              child: TextField(
                                controller: null,
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password',
                                    icon: Icon(
                                      Icons.lock,
                                      color: Colors.purple[700],
                                    )),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      );
}
