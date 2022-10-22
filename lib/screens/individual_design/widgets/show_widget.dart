import 'package:flutter/material.dart';

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
