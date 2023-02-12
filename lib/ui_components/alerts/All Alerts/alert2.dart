import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert2 extends StatelessWidget {
  const Alert2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'Message',
                  style: TextStyle(
                      fontFamily:
                          GoogleFonts.publicSans(fontWeight: FontWeight.w600)
                              .fontFamily,
                      fontSize: 18,
                      color: Colors.black),
                ),
                Text('Description',
                    style: TextStyle(
                        fontFamily:
                            GoogleFonts.publicSans(fontWeight: FontWeight.w400)
                                .fontFamily,
                        fontSize: 18,
                        color: Colors.black)),
              ],
            ),
          ),
          const Icon(
            Icons.cancel_sharp,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
