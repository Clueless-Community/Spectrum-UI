import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert2 extends StatefulWidget {
  final String message;
  final String description;

  const Alert2(this.message, this.description, {super.key});

  @override
  State<Alert2> createState() => _Alert2State();
}

class _Alert2State extends State<Alert2> {
  late bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 68,
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(253, 192, 78, 1),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            const Icon(
              Icons.info,
              color: Colors.black,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.message,
                    style: TextStyle(
                        fontFamily:
                            GoogleFonts.publicSans(fontWeight: FontWeight.w600)
                                .fontFamily,
                        fontSize: 18,
                        color: Colors.black),
                  ),
                  Text(widget.description,
                      style: TextStyle(
                          fontFamily: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w400)
                              .fontFamily,
                          fontSize: 18,
                          color: Colors.black)),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              child: const Icon(
                Icons.cancel_sharp,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
