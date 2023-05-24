import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert12.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';
import '../../ui_components/alerts/all_alerts/coloured_alert/alert1.dart';
import '../../ui_components/alerts/all_alerts/coloured_alert/alert2.dart';
import '../../ui_components/alerts/all_alerts/coloured_alert/alert3.dart';
import '../../ui_components/alerts/all_alerts/coloured_alert/alert4.dart';
import '../../ui_components/alerts/all_alerts/dark_mode_alert/alert10.dart';
import '../../ui_components/alerts/all_alerts/dark_mode_alert/alert11.dart';
import '../../ui_components/alerts/all_alerts/dark_mode_alert/alert9.dart';
import '../../ui_components/alerts/all_alerts/simple_alert/alert5.dart';
import '../../ui_components/alerts/all_alerts/simple_alert/alert6.dart';
import '../../ui_components/alerts/all_alerts/simple_alert/alert7.dart';
import '../../ui_components/alerts/all_alerts/simple_alert/alert8.dart';
import '../../ui_components/buttons/all_buttons/elevated_button/button1.dart';
import '../../ui_components/buttons/all_buttons/elevated_button/button3.dart';
import '../../ui_components/buttons/all_buttons/elevated_button/button5.dart';
import '../../ui_components/buttons/all_buttons/elevated_button/button7.dart';
import '../../ui_components/buttons/all_buttons/elevated_button/button9.dart';
import '../../ui_components/buttons/all_buttons/outline_button/button10.dart';
import '../../ui_components/buttons/all_buttons/outline_button/button2.dart';
import '../../ui_components/buttons/all_buttons/outline_button/button4.dart';
import '../../ui_components/buttons/all_buttons/text_button/button6.dart';
import '../../ui_components/cards/All Cards/blog_card/card_1.dart';
import '../../ui_components/cards/All Cards/blog_card/card_2.dart';
import '../../ui_components/cards/All Cards/blog_card_dark_mode/card_5.dart';
import '../../ui_components/cards/All Cards/blog_card_dark_mode/card_6.dart';
import '../../ui_components/cards/All Cards/social_card/card_3.dart';
import '../../ui_components/cards/All Cards/social_card/card_4.dart';
import '../../ui_components/cards/All Cards/social_card_dark_mode/card_7.dart';
import '../../ui_components/cards/All Cards/social_card_dark_mode/card_8.dart';

List<List<Widget>> allwidgets = [
  [
    const Button2("button"),
    const Button4("button"),
    const Button10("button"),
  ],
  [
    const Button1("button"),
    const Button3("button"),
    const Button5("button"),
    const Button7("button"),
    const Button9("button")
  ],
  [
    const Button6("button"),
  ],
  [
    const Alert1("AMessage", "ADescriptions"),
    const Alert2("AMessage", "ADescriptions"),
    const Alert3("AMessage", "ADescriptions"),
    const Alert4("AMessage", "ADescriptions"),
  ],
  [
    const Alert5("AMessage", "ADescriptions"),
    const Alert6("AMessage", "ADescriptions"),
    const Alert7("AMessage", "ADescriptions"),
    const Alert8("AMessage", "ADescriptions"),
  ],
  [
    const Alert9("AMessage", "ADescriptions"),
    const Alert10("AMessage", "ADescriptions"),
    const Alert11("AMessage", "ADescriptions"),
    const Alert12("AMessage", "ADescriptions"),
  ],
  [
    const FirstCard(),
    const SecondCard(),
  ],
  const [
    ThirdCard(),
    FourthCard(),
  ],
  const [
    FifthCard(),
    SixthCard(),
  ],
  const [
    SeventhCard(),
    EightCard(),
  ]
];

List<Widget> results = [];
List<Color?> resultStar = [];
List<String> tags = [
  'Custom Outline Button',
  'Custom Elevated Button',
  'Custom Text Button',
  'Colured Alerts',
  'Simple Alerts',
  'Simple Alerts DarkMode',
  'Blog Card List',
  'Social Card List',
  'Blog Card DarKMode List',
  'Social Card DarkMode List'
];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller = TextEditingController();
  @override
  void dispose() {
    _controller.dispose();
    results.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Search",
                  style: TextStyle(
                    color: MyTheme.lightBluishColor,
                    fontSize: 24,
                    fontFamily: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                    ).fontFamily,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.82,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                      child: TextField(
                        controller: _controller,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 17),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      for (int i = 0; i < tags.length; i++) {
                        if (tags[i]
                            .toLowerCase()
                            .contains(_controller.text.toLowerCase())) {
                          print(tags[i]);
                          for (int j = 0; j < allwidgets[i].length; j++) {
                            results.add(allwidgets[i][j]);
                            resultStar.add(null);
                          }
                        }
                      }
                      setState(() {
                        results;
                        print(results);
                      });
                    },
                    child: const Icon(
                      Icons.search_outlined,
                      size: 35,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    return Consumer<FavoritesProvider>(
                      builder: (context, favProviderModel, child) => Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            width: double.infinity,
                            child: results[index],
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
                                    favProviderModel.add(
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        width: double.infinity,
                                        child: results[index],
                                      ),
                                    );
                                    setState(() {
                                      resultStar[index] = Colors.amber;
                                    });
                                  },
                                  child: Icon(
                                    Icons.star_border_outlined,
                                    color: resultStar[index],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
