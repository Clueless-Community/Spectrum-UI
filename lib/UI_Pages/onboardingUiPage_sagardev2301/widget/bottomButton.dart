import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BottomButtons extends StatefulWidget {
  BottomButtons(
      {super.key,
      required this.noOfPagesInCarousel,
      required this.carouselController});
  final int noOfPagesInCarousel;
  CarouselController carouselController;
  @override
  State<BottomButtons> createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: const SizedBox(
              width: 50,
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                widget.carouselController
                    .jumpToPage(widget.noOfPagesInCarousel - 1);
              });
            },
          ),
          TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 25,
                  color: Colors.black,
                ),
              ],
            ),
            onPressed: () {
              setState(() {
                widget.carouselController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear);
              });
            },
          )
        ],
      ),
    );
  }
}