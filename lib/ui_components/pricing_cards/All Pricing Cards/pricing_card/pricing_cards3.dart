import 'dart:ui';

import 'package:flutter/material.dart';

class PricingCard3 extends StatefulWidget {
  const PricingCard3(
      {super.key,
      required this.tier,
      required this.price,
      required this.period,
      required this.cardColor,
      required this.textColor,
      required this.buttonColor,
      required this.buttonTextColor});
  final Color cardColor;
  final Color textColor;
  final Color buttonTextColor;
  final Color buttonColor;
  final String price;
  final String period;
  final String tier;

  @override
  State<PricingCard3> createState() => _PricingCard3State();
}

class _PricingCard3State extends State<PricingCard3> {
  @override
  Size getscreenSize() {
    return MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  }

  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width* 0.85,
      decoration: BoxDecoration(
        color: widget.cardColor.withOpacity(0.95),
        border: Border.all(
            color: widget.cardColor,style: BorderStyle.solid),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      padding: const EdgeInsets.all(4),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5),),
            gradient: LinearGradient(
              begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.white54, Colors.white10]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.verified_rounded,
                  size: 75,
                  color: widget.textColor,
                ),
                Text(
                  widget.tier,
                  style: TextStyle(
                    color: widget.textColor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Text(
                              widget.price,
                              style: TextStyle(
                                color: widget.textColor,
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              '/${widget.period}',
                              style: TextStyle(
                                color: widget.textColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                          children:[
                               Padding(
                                 padding: const EdgeInsets.only(bottom: 15),
                                 child: Icon(
                                    Icons.circle,
                                    size: 12,
                                    color: widget.textColor,
                                  ),
                               ),
                              Expanded(
                                child: Text(
                                "Easily receive new glasses on a regular basis",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: widget.textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                ),
                            ),
                              ),
                         ]),
                      Row(
                          children:[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Icon(
                                Icons.circle,
                                size: 12,
                                color: widget.textColor,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Easily receive new glasses on a regular basis",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: widget.textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w100,
                                ),
                              ),
                            ),
                          ]),
                    ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: widget.buttonColor,
                      minimumSize: const Size.fromHeight(50),

                    ),
                    child: Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          color: widget.buttonTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
    ]),
          ),
    ),
    );
  }
}
