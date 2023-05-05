import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card/card_1.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card/card_2.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/social_card/card_3.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/social_card/card_4.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card_dark_mode/card_5.dart';

import '../../theme/theme.dart';
import 'All Cards/blog_card_dark_mode/card_6.dart';
import 'All Cards/social_card_dark_mode/card_7.dart';
import 'All Cards/social_card_dark_mode/card_8.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  final blogCardList = const [
    FirstCard(),
    SecondCard(),
  ];

  final socialCardList = const [
    ThirdCard(),
    FourthCard(),
  ];
  final blogCardDarKModeList = const [
    FifthCard(),
    SixthCard(),
  ];

  final socialCardDarkModeList = const [
    SeventhCard(),
    EightCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Blog Cards",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                blogCardList.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  width: double.infinity,
                  child: blogCardList[index],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Social Cards",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                socialCardList.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  width: double.infinity,
                  child: socialCardList[index],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Blog Cards Dark Mode",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                blogCardDarKModeList.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  width: double.infinity,
                  child: blogCardDarKModeList[index],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Social Cards Dark Mode",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor)),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                socialCardDarkModeList.length,
                (index) => Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  width: double.infinity,
                  child: socialCardDarkModeList[index],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
