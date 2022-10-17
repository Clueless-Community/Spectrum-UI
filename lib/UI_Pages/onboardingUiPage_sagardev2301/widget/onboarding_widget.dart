import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget(
      {super.key,
      required this.title,
      required this.description,
      required this.image,
      required this.backgroundColor,
      required this.noOfPagesInCarousel,
      required this.currentIndex,
      required this.child});

  final String title;
  final String description;
  final Image image;
  final Color backgroundColor;
  final Widget child;
  final int noOfPagesInCarousel;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Expanded(
              flex: 3,
              child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: image)),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              DotsIndicator(
                dotsCount: noOfPagesInCarousel,
                position: (currentIndex).toDouble(),
                decorator: DotsDecorator(
                  activeColor: Colors.black,
                  color: Colors.black,
                  spacing: const EdgeInsets.all(4),
                  size: const Size.square(10.0),
                  activeSize: const Size(25.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: child,
          )
        ],
      ),
    );
  }
}
