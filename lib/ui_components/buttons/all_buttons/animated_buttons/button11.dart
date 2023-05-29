import 'package:flutter/material.dart';

class Button11 extends StatefulWidget {
  final String title;
  const Button11(this.title, {super.key});

  @override
  State<Button11> createState() => _Button11State();
}

class _Button11State extends State<Button11> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () async {
        setState(() => _isLoading = true);
        await Future.delayed(const Duration(seconds: 3));
        setState(() => _isLoading = false);
      },
      color: const Color.fromARGB(255, 0, 194, 203),
      height: 60,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      child: _isLoading
          // ignore: sized_box_for_whitespace
          ? Container(
              width: 200,
              height: 60,
              child: Row(
                children: const [
                  CircularProgressIndicator(color: Colors.white),
                  SizedBox(width: 30),
                  Text('Please wait...',
                      style: TextStyle(
                          fontSize: 20,
                          // fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 255, 255)))
                ],
              ),
            )
          : Text(widget.title,
              style: const TextStyle(
                  fontSize: 20,
                  // fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 255, 255, 255))),
    );
  }
}
