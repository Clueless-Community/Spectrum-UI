import 'package:flutter/material.dart';

enum ButtonState { init, loading, done }

class Button12 extends StatefulWidget {
  final String title;
  const Button12(this.title, {super.key});
  @override
  Button12State createState() => Button12State();
}

class Button12State extends State<Button12> {
  bool _isAnimating = true;
  ButtonState state = ButtonState.init;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isStretched = _isAnimating || state == ButtonState.init;
    bool isDone = state == ButtonState.done;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      alignment: Alignment.center,
      width: state == ButtonState.init ? width : 100,
      height: 70,
      onEnd: () => setState(() => _isAnimating = !_isAnimating),
      child: isStretched ? buildButton() : smallButton(isDone),
    );
  }

  Widget buildButton() => ElevatedButton(
        onPressed: () async {
          setState(() => state = ButtonState.loading);
          await Future.delayed(const Duration(seconds: 3));
          setState(() => state = ButtonState.done);
          await Future.delayed(const Duration(seconds: 3));
          setState(() => state = ButtonState.init);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 194, 203),
            fixedSize: const Size(100, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
        child: Text(widget.title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255))),
      );
  Widget smallButton(bool isDone) {
    final color =
        isDone ? Colors.green : const Color.fromARGB(255, 0, 194, 203);
    return Container(
      height: 55,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(
          child: isDone
              ? const Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 45,
                )
              : const CircularProgressIndicator(
                  color: Colors.white,
                )),
    );
  }
}
