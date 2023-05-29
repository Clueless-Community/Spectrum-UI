import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert12.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../data/export.dart';
import '../../ui_components/messages/all_messages/bubble_message/message_2.dart';
import '../../ui_components/messages/all_messages/bubble_message/message_3.dart';
import '../../ui_components/messages/all_messages/bubble_message/message_4.dart';

Color? color;

//add differnt categories of widgets as a form of List<Widget> and the label you want to search of it as in the next list
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
    const BasicRadioButton(),
    const RadioButtonwithTextandStyles(),
    const RadioButtonwithCustomColor(),
    const RadioButtonwithHorizontalLayout(),
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
  ],
  [
    const Avatar2(
      size: 100,
      text: Text(
        'AZ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      backgroundColor: Colors.black,
    ),
  ],
  [
    const Avatar1(size: 100, imagePath: 'assets/bored.png'),
  ],
  [
    const Avatar3(
      size: 100,
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 50,
      ),
      backgroundColor: Colors.black,
    ),
  ],
  [
    const TextArea1(
      label: "TextArea1",
      hinttext: "Write Message",
    ),
    const TextArea2(
      label: "TextArea2",
      hinttext: "Write Description",
    ),
    const TextArea3(
      label: "TextArea3",
      hinttext: "Write Description",
    ),
    const TextArea4(
      label: "TextArea4",
      hinttext: "Write Description",
    )
  ],
  [
    const InputField1(
      label: "Title",
      hinttext: "Input Title",
    ),
    const InputField2(
      label: "Title Lite",
      hinttext: "Input Title",
    ),
    const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ),
    const InputField4(
      label: "Title Lite-X",
      hinttext: "Input Title",
    ),
    const InputField5(
      label: "Title Type B",
      hinttext: "Input Title",
    ),
  ],
  [
    const Slider4(
      activeColor: Colors.white,
      inactiveColor: Colors.black,
      maxRange: 100,
    ),
  ],
  [
    const Slider1(
      activeColor: Colors.cyan,
      inactiveColor: Colors.black,
      maxRange: 100.0,
    ),
    const Slider3(
      activeColor: Colors.red,
      inactiveColor: Colors.white,
      maxRange: 100,
    ),
    const Slider5(
      activeColor: Colors.pink,
      inactiveColor: Colors.amberAccent,
      maxRange: 100,
    ),
    const Slider6(
      activeColor: Colors.lightBlueAccent,
      inactiveColor: Color(0xFF005F99),
      maxRange: 60,
    ),
    Slider2(
      activeColor: const Color(0xFF005F99),
      inactiveColor: Colors.purple.shade600,
      maxRange: 100,
    ),
  ],
  [
    const InboxMessage1(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage2(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage3(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    const InboxMessage4(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start ",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
  ],
  [
    const Message1(
      message: "Hello boy",
    ),
    const Message2(
      message: "Hello broo",
    ),
    const Message3(
      message: "Hey whats up man",
    ),
    const Message4(
      message: "Hello broo",
    ),
  ],
  [
    const PricingCard1(
      tier: 'FREE',
      supportingText:
          'For those who want to try our services with no commitment',
      price: '\$0',
      period: 'month',
      details: [
        'Easily receive new glasses on a regular basis',
        'More cost-effective than buying glasses individually',
      ],
      cardColor: Color(0xff0f172a),
      textColor: Colors.white,
      buttonColor: Color(0xff00c2cb),
      buttonTextColor: Color(0xff0f172a),
    ),
  ],
  [
    Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ),
    Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ),
    Center(
      child: RadioChips(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ),
    Center(
      child: RectangularSelections(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ),
  ],
  [
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
  ]
];
//results get added to this list
List<Widget> results = [];
//this list is for converting the stared icon to amber color.
List<Color?> resultStar = [];
//the tags wil not search for exact name if it just contains the searched word it will add it
List<String> tags = [
  'Custom Outline Buttons',
  'Custom Elevated Buttons',
  'Custom Text Buttons',
  'Radio Buttons',
  'Colured Alerts',
  'Simple Alerts',
  'Simple Alerts DarkMode',
  'Blog Cards List',
  'Social Cards List',
  'Blog Cards DarKMode List',
  'Social Cards DarkMode List',
  'Text Avatars',
  'Image Avatars',
  'Icon Avatars',
  'textareas inputfields',
  'inputfields',
  'dual Point Sliders',
  'single Point Slider',
  'inbox Messages chats',
  'bubble Chats Messages',
  'price Cards',
  'segmented controls',
  'pagination',
];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    results.clear();
    resultStar.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
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
                    width: MediaQuery.of(context).size.width * 0.785,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
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
                  GestureDetector(
                    onTap: () {
                      results.clear();
                      if (_controller.text.isEmpty) {
                        results.clear();
                      } else {
                        for (int i = 0; i < tags.length; i++) {
                          if (tags[i]
                              .toLowerCase()
                              .contains(_controller.text.toLowerCase())) {
                            for (int j = 0; j < allwidgets[i].length; j++) {
                              results.add(allwidgets[i][j]);
                              resultStar.add(null);
                            }
                          }
                        }
                        setState(() {
                          results;
                        });
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.width * 0.163,
                      decoration: BoxDecoration(
                        color: MyTheme.lightBluishColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Icon(
                          Icons.search_outlined,
                          size: 36,
                          color: Colors.white70,
                        ),
                      ),
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
