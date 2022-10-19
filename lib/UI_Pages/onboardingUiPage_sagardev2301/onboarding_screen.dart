// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/onboardingUiPage_sagardev2301/widget/onboarding_widget.dart';

import 'widget/bottomButton.dart';

// This is the OnBoardingScreen widget which you can use to design the onboarding for your app.

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key, required this.onPressed}) : super(key: key);
  // This onPressed function is tells what happens when Get Started Button is pressed in last page of carousel.
  VoidCallback onPressed;
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Set this number equal to the number of pages you have in carousel.
  int noOfPagesInCarousel = 3;
  int _currentIndex = 0;
  CarouselController carouselController = CarouselController();
  @override
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            carouselController: carouselController,
            items: [
              // Use this OnBoarding Widget to design single page of carousel and pass the image, title, description to widget.
              OnBoardingWidget(
                title: "Get Inspired",
                description:
                    "Don't know what to eat? Take a\npicture, we'll suggest things to\ncook with your indgredients.",
                image: Image.asset(
                    "assets/onboardingScreen_images_sagardev2301/orderingFood.jpg"),
                noOfPagesInCarousel: noOfPagesInCarousel,
                currentIndex: _currentIndex,
                backgroundColor: Colors.white, // const Color(0xFFFEAE4F),
                child: BottomButtons(
                  carouselController: carouselController,
                  noOfPagesInCarousel: noOfPagesInCarousel,
                ),
              ),
              OnBoardingWidget(
                title: "Easy & healthy",
                description:
                    "Find thousands of easy and\n healthy recipes so you save\ntime and eat better.",
                image: Image.asset(
                    "assets/onboardingScreen_images_sagardev2301/preparingFood.jpg"),
                noOfPagesInCarousel: noOfPagesInCarousel,
                currentIndex: _currentIndex,
                backgroundColor: Colors.white, //const Color(0xFFFEBE96),
                child: BottomButtons(
                  carouselController: carouselController,
                  noOfPagesInCarousel: noOfPagesInCarousel,
                ),
              ),

              // Don't delete this one just modify the parameters according to your last page, because it contains the Get Started Button.

              OnBoardingWidget(
                title: "Save you favorites",
                description:
                    "Save your favorite recipes and\nget reminders to buy the\ningredients to cook them.",
                image: Image.asset(
                    "assets/onboardingScreen_images_sagardev2301/boyeatingfood.jpg"),
                noOfPagesInCarousel: 3,
                currentIndex: _currentIndex,
                backgroundColor: Colors.white, //const Color(0xFF20B091),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orangeAccent),
                    ),
                    onPressed: () {
                      debugPrint("get started");
                      widget.onPressed;
                    },
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              scrollDirection: Axis.horizontal,
              initialPage: _currentIndex,
              pageSnapping: true,
              height: queryData.size.height,
              enableInfiniteScroll: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
