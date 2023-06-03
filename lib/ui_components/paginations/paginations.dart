import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/paginations/all_paginations/page1.dart';
import 'package:provider/provider.dart';
import '../../provider/favorite_provider.dart';
import 'all_paginations/page2.dart';
import 'all_paginations/page3.dart';
import 'all_paginations/page4.dart';
import 'all_paginations/page5.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final List<Widget> pages = [
    const Page1(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF005F99),
    ),
    const Page2(
      iconColor: Colors.black,
      textColor: Colors.black,
      // highlightedColor: Colors.blue,
    ),
    const Page3(
      iconColor: Colors.white,
      containerColor: Colors.black,
      textColor: Colors.white,
    ),
    const Page4(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
    ),
    const Page5(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF00C2CB),
    ),
  ];
  List<Color?> pagesLikeButtonColor = [null, null, null, null, null];
  List<int> pagesLikeButtonIndex = [65, 66, 67, 68, 69];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: pages[index],
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
                          favProviderModel.add(pagesLikeButtonIndex[index]);
                          setState(() {
                            pagesLikeButtonColor[index] = Colors.amber;
                          });
                        },
                        child: Icon(
                          Icons.star_border_outlined,
                          color: pagesLikeButtonColor[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: pages.length,
      ),
    );
  }
}
