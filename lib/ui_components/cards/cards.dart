import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card/card_1.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card/card_2.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/social_card/card_3.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/social_card/card_4.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/blog_card_dark_mode/card_5.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'All Cards/blog_card_dark_mode/card_6.dart';
import 'All Cards/social_card_dark_mode/card_7.dart';
import 'All Cards/social_card_dark_mode/card_8.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final blogCardList = const [
    FirstCard(),
    SecondCard(),
  ];
  List<int> blogCardListIndex = [26, 27];

  final socialCardList = const [
    ThirdCard(),
    FourthCard(),
  ];
  List<int> socialCardListIndex = [28, 29];

  final blogCardDarKModeList = const [
    FifthCard(),
    SixthCard(),
  ];
  List<int> blogCardDarKModeListIndex = [30, 31];

  final socialCardDarkModeList = const [
    SeventhCard(),
    EightCard(),
  ];
  List<int> socialCardDarkModeListIndex = [32, 33];

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
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        width: double.infinity,
                        child: blogCardList[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel.add(blogCardListIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(blogCardListIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        width: double.infinity,
                        child: socialCardList[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel
                                    .add(socialCardListIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(socialCardListIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        width: double.infinity,
                        child: blogCardDarKModeList[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel
                                    .add(blogCardDarKModeListIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel.starred(
                                        blogCardDarKModeListIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        width: double.infinity,
                        child: socialCardDarkModeList[index],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Add to favorite'),
                            const SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {
                                favProviderModel
                                    .add(socialCardDarkModeListIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel.starred(
                                        socialCardDarkModeListIndex[index]))
                                    ? Colors.amber
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
