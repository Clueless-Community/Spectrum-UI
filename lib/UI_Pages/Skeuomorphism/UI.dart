// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, depend_on_referenced_packages
// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'constants.dart';
import 'background_design.dart';
import 'buttom_container.dart';
import 'login_credentials.dart';

class Skeumorphism extends StatefulWidget {
  const Skeumorphism({super.key});

  @override
  State<Skeumorphism> createState() => _SkeumorphismState();
}

class _SkeumorphismState extends State<Skeumorphism> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              BackgroundDesign(),
              LoginCredentials(),
              BottomContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
