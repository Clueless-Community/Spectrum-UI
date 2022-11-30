import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedBackground extends StatelessWidget {
  final Widget child;
  const FrostedBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalHeight = MediaQuery.of(context).size.height;
    final totalWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        // Add BackgroudImage here
        Positioned(
          top: 0,
          right: totalWidth * 0.25,
          child: Opacity(
            opacity: 0.8,
            child: Image.asset(
              "assets/glassmorph_login_harsh8833/bg.png",
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: totalHeight * 0.8,
            width: totalWidth * 0.95,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: SizedBox(
                  height: totalHeight,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: child,
        ),
      ],
    );
  }
}
