import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShowWidget extends StatelessWidget {
  ShowWidget({super.key, required this.child});
  Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: child,
      ),
    );
  }
}
