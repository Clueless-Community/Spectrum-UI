import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert3 extends StatelessWidget {
  const Alert3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: 68,
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(26, 132, 73, 1),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          const Icon(
            Icons.verified,
            color: Colors.white,
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
                  'Message',
                  style: TextStyle(
                      fontFamily:
                          GoogleFonts.publicSans(fontWeight: FontWeight.w600)
                              .fontFamily,
                      fontSize: 18,
                      color: Colors.white),
                ),
                Text('Description',
                    style: TextStyle(
                        fontFamily:
                            GoogleFonts.publicSans(fontWeight: FontWeight.w400)
                                .fontFamily,
                        fontSize: 18,
                        color: Colors.white)),
              ],
            ),
          ),
          const Icon(
            Icons.cancel_sharp,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
