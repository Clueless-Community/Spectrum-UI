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
List<Map<Widget, int>> allwidgets = [
  {
    const Button2("button"): 1,
    const Button4("button"): 2,
    const Button10("button"): 3,
  },
  {
    const Button1("button"): 4,
    const Button3("button"): 5,
    const Button5("button"): 6,
    const Button7("button"): 7,
    const Button9("button"): 8,
  },
  {
    const Button6("button"): 9,
  },
  {
    const BasicRadioButton(): 10,
    const RadioButtonwithTextandStyles(): 11,
    const RadioButtonwithCustomColor(): 12,
    const RadioButtonwithHorizontalLayout(): 13,
  },
  {
    const Alert1("AMessage", "ADescriptions"): 14,
    const Alert2("AMessage", "ADescriptions"): 15,
    const Alert3("AMessage", "ADescriptions"): 16,
    const Alert4("AMessage", "ADescriptions"): 17,
  },
  {
    const Alert5("AMessage", "ADescriptions"): 18,
    const Alert6("AMessage", "ADescriptions"): 19,
    const Alert7("AMessage", "ADescriptions"): 20,
    const Alert8("AMessage", "ADescriptions"): 21,
  },
  {
    const Alert9("AMessage", "ADescriptions"): 22,
    const Alert10("AMessage", "ADescriptions"): 23,
    const Alert11("AMessage", "ADescriptions"): 24,
    const Alert12("AMessage", "ADescriptions"): 25,
  },
  {
    const FirstCard(): 26,
    const SecondCard(): 27,
  },
  {
    const ThirdCard(): 28,
    const FourthCard(): 29,
  },
  {
    const FifthCard(): 30,
    const SixthCard(): 31,
  },
  {
    const SeventhCard(): 32,
    const EightCard(): 33,
  },
  {
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
    ): 34,
  },
  {
    const Avatar1(size: 100, imagePath: 'assets/bored.png'): 35,
  },
  {
    const Avatar3(
      size: 100,
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 50,
      ),
      backgroundColor: Colors.black,
    ): 36,
  },
  {
    const TextArea1(
      label: "TextArea1",
      hinttext: "Write Message",
    ): 37,
    const TextArea2(
      label: "TextArea2",
      hinttext: "Write Description",
    ): 38,
    const TextArea3(
      label: "TextArea3",
      hinttext: "Write Description",
    ): 39,
    const TextArea4(
      label: "TextArea4",
      hinttext: "Write Description",
    ): 40
  },
  {
    const InputField1(
      label: "Title",
      hinttext: "Input Title",
    ): 41,
    const InputField2(
      label: "Title Lite",
      hinttext: "Input Title",
    ): 42,
    const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ): 43,
    const InputField4(
      label: "Title Lite-X",
      hinttext: "Input Title",
    ): 44,
    const InputField5(
      label: "Title Type B",
      hinttext: "Input Title",
    ): 45,
  },
  {
    const Slider4(
      activeColor: Colors.white,
      inactiveColor: Colors.black,
      maxRange: 100,
    ): 46,
  },
  {
    const Slider1(
      activeColor: Colors.cyan,
      inactiveColor: Colors.black,
      maxRange: 100.0,
    ): 47,
    const Slider3(
      activeColor: Colors.red,
      inactiveColor: Colors.white,
      maxRange: 100,
    ): 48,
    // const Slider5(
    //   activeColor: Colors.pink,
    //   inactiveColor: Colors.amberAccent,
    //   maxRange: 100,
    // ):49,
    // const Slider6(
    //   activeColor: Colors.lightBlueAccent,
    //   inactiveColor: Color(0xFF005F99),
    //   maxRange: 60,
    // ):50,
    Slider2(
      activeColor: const Color(0xFF005F99),
      inactiveColor: Colors.purple.shade600,
      maxRange: 100,
    ): 51,
  },
  {
    const InboxMessage1(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ): 52,
    const InboxMessage2(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ): 53,
    const InboxMessage3(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ): 54,
    const InboxMessage4(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start ",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ): 55,
  },
  {
    const Message1(
      message: "Hello boy",
    ): 56,
    const Message2(
      message: "Hello broo",
    ): 57,
    const Message3(
      message: "Hey whats up man",
    ): 58,
    const Message4(
      message: "Hello broo",
    ): 59,
  },
  {
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
    ): 60,
  },
  {
    Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ): 61,
    Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ): 62,
    Center(
      child: RadioChips(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ): 63,
    Center(
      child: RectangularSelections(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ): 64,
  },
  {
    const Page1(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF005F99),
    ): 65,
    const Page2(
      iconColor: Colors.black,
      textColor: Colors.black,
      // highlightedColor: Colors.blue,
    ): 66,
    const Page3(
      iconColor: Colors.white,
      containerColor: Colors.black,
      textColor: Colors.white,
    ): 67,
    const Page4(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
    ): 68,
    const Page5(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF00C2CB),
    ): 69,
  }
];
//results get added to this list
List<Widget> results = [];
List<int> resultindex = [];
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
                            allwidgets[i].forEach((key, value) {
                              results.add(key);
                              resultindex.add(value);
                            });
                            for (int j = 0; j < allwidgets[i].length; j++) {
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
                                    favProviderModel.add(resultindex[index]);
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
