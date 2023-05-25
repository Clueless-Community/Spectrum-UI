import 'dart:ui';

import 'package:flutter/material.dart';

class PricingCard4 extends StatefulWidget {
  const PricingCard4(
      {super.key,
      required this.supportingText,
      required this.price,
        required this.price1,
        required this.price2,
      required this.period,
        required this.period1,
        required this.period2,
      required this.cardColor,
      required this.textColor,
      required this.buttonColor,
      required this.buttonTextColor});
  final Color cardColor;
  final Color textColor;
  final Color buttonTextColor;
  final Color buttonColor;
  final String supportingText;
  final String price;
  final String price1;
  final String price2;
  final String period;
  final String period1;
  final String period2;

  @override
  State<PricingCard4> createState() => _PricingCard4State();
}

class _PricingCard4State extends State<PricingCard4> {
  @override
  Size getscreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: widget.cardColor.withOpacity(0.95),
        border: Border.all(color: widget.cardColor, style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            Text('Choose your Plan',
              style: TextStyle(
                color: widget.textColor,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1.0, color: Colors.white60),
                          ),
                              onPressed: null,
                              child: Column(
                                  children: [
                                    Text(
                                      widget.price,
                                      style: TextStyle(
                                        color: widget.textColor,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      widget.period,
                                      style: TextStyle(
                                        color: widget.textColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                      ),
                    ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1.0, color: Colors.white60),
                      ),
                      onPressed: null,
                      child: Column(
                        children: [
                          Text(
                            widget.price1,
                            style: TextStyle(
                              color: widget.textColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            widget.period1,
                            style: TextStyle(
                              color: widget.textColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1.0, color: Colors.white60),
                      ),
                      onPressed: null,
                      child: Column(
                        children: [
                          Text(
                            widget.price2,
                            style: TextStyle(
                              color: widget.textColor,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            widget.period2,
                            style: TextStyle(
                              color: widget.textColor,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
                ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: widget.buttonColor,
              minimumSize: const Size.fromHeight(40),
            ),
            child: Center(
              child: Text(
                'Proceed to Payment',
                style: TextStyle(
                  color: widget.buttonTextColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
              widget.supportingText,
                textAlign: TextAlign.center,
              style: TextStyle(
                color: widget.textColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
        ),
            ),
          ),
        ]),
          )
        );
  }
}
