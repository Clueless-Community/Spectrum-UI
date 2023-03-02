import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert11 extends StatefulWidget {
  final String message;
  final String description;

  const Alert11(this.message, this.description, {super.key});

  @override
  State<Alert11> createState() => _Alert11State();
}

class _Alert11State extends State<Alert11> {
  late bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        height: 68,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
                height: 68,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(26, 132, 73, 1),
                    borderRadius: BorderRadius.circular(2))),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.verified,
              color: Color.fromRGBO(26, 132, 73, 1),
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
                        color: Colors.white),
                  ),
                  Text(widget.description,
                      style: TextStyle(
                          fontFamily: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w400)
                              .fontFamily,
                          fontSize: 18,
                          color: const Color.fromRGBO(100, 116, 139, 1))),
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
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
