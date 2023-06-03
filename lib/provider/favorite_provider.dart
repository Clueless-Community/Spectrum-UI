import 'package:flutter/material.dart';

import '../data/export.dart';
import '../ui_components/alerts/all_alerts/dark_mode_alert/alert12.dart';
import '../ui_components/messages/all_messages/bubble_message/message_2.dart';
import '../ui_components/messages/all_messages/bubble_message/message_3.dart';
import '../ui_components/messages/all_messages/bubble_message/message_4.dart';

Color? color;

class FavoritesProvider extends ChangeNotifier {
  List<int> favs = [];
  Map<int, Widget> widgetMap = {
    1: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button2("button"),
    ),
    2: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button4("button"),
    ),
    3: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button10("button"),
    ),
    4: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button1("button"),
    ),
    5: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button3("button"),
    ),
    6: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button5("button"),
    ),
    7: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button7("button"),
    ),
    8: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button9("button"),
    ),
    9: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const Button6("button"),
    ),
    10: const BasicRadioButton(),
    11: const RadioButtonwithTextandStyles(),
    12: const RadioButtonwithCustomColor(),
    13: const RadioButtonwithHorizontalLayout(),
    14: const Alert1("AMessage", "ADescriptions"),
    15: const Alert2("AMessage", "ADescriptions"),
    16: const Alert3("AMessage", "ADescriptions"),
    17: const Alert4("AMessage", "ADescriptions"),
    18: const Alert5("AMessage", "ADescriptions"),
    19: const Alert6("AMessage", "ADescriptions"),
    20: const Alert7("AMessage", "ADescriptions"),
    21: const Alert8("AMessage", "ADescriptions"),
    22: const Alert9("AMessage", "ADescriptions"),
    23: const Alert10("AMessage", "ADescriptions"),
    24: const Alert11("AMessage", "ADescriptions"),
    25: const Alert12("AMessage", "ADescriptions"),
    26: const FirstCard(),
    27: const SecondCard(),
    28: const ThirdCard(),
    29: const FourthCard(),
    30: const FifthCard(),
    31: const SixthCard(),
    32: const SeventhCard(),
    33: const EightCard(),
    34: const Avatar2(
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
    35: const Avatar1(size: 100, imagePath: 'assets/bored.png'),
    36: const Avatar3(
      size: 100,
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 50,
      ),
      backgroundColor: Colors.black,
    ),
    37: const TextArea1(
      label: "TextArea1",
      hinttext: "Write Message",
    ),
    38: const TextArea2(
      label: "TextArea2",
      hinttext: "Write Description",
    ),
    39: const TextArea3(
      label: "TextArea3",
      hinttext: "Write Description",
    ),
    40: const TextArea4(
      label: "TextArea4",
      hinttext: "Write Description",
    ),
    41: const InputField1(
      label: "Title",
      hinttext: "Input Title",
    ),
    42: const InputField2(
      label: "Title Lite",
      hinttext: "Input Title",
    ),
    43: const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ),
    44: const InputField4(
      label: "Title Lite-X",
      hinttext: "Input Title",
    ),
    45: const InputField5(
      label: "Title Type B",
      hinttext: "Input Title",
    ),
    46: const Slider4(
      activeColor: Colors.white,
      inactiveColor: Colors.black,
      maxRange: 100,
    ),
    47: const Slider1(
      activeColor: Colors.cyan,
      inactiveColor: Colors.black,
      maxRange: 100.0,
    ),
    48: const Slider3(
      activeColor: Colors.red,
      inactiveColor: Colors.white,
      maxRange: 100,
    ),
    49: const Slider5(
      activeColor: Colors.pink,
      inactiveColor: Colors.amberAccent,
      maxRange: 100,
    ),
    50: const Slider6(
      activeColor: Colors.lightBlueAccent,
      inactiveColor: Color(0xFF005F99),
      maxRange: 60,
    ),
    51: Slider2(
      activeColor: const Color(0xFF005F99),
      inactiveColor: Colors.purple.shade600,
      maxRange: 100,
    ),
    52: const InboxMessage1(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    53: const InboxMessage2(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    54: const InboxMessage3(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    55: const InboxMessage4(
      name: "ClueLess",
      username: "clueless@gmail.com",
      msg: "Hey let's start ",
      imgUrl: 'https://picsum.photos/seed/407/600',
    ),
    56: const Message1(
      message: "Hello boy",
    ),
    57: const Message2(
      message: "Hello broo",
    ),
    58: const Message3(
      message: "Hey whats up man",
    ),
    59: const Message4(
      message: "Hello broo",
    ),
    60: const PricingCard1(
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
    61: Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ),
    62: Center(
      child: SegmentedControlWidget(
        choices: {
          0: buildSegment("week", color),
          1: buildSegment("Month", color),
          2: buildSegment("Year", color),
        },
      ),
    ),
    63: Center(
      child: RadioChips(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ),
    64: Center(
      child: RectangularSelections(
        values: const ['Text', 'Text', 'Text'],
        onSelected: (index) {},
      ),
    ),
    65: const Page1(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF005F99),
    ),
    66: const Page2(
      iconColor: Colors.black,
      textColor: Colors.black,
      // highlightedColor: Colors.blue,
    ),
    67: const Page3(
      iconColor: Colors.white,
      containerColor: Colors.black,
      textColor: Colors.white,
    ),
    68: const Page4(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
    ),
    69: const Page5(
      iconColor: Colors.black,
      containerColor: Colors.white,
      textColor: Colors.black,
      hightlightColor: Color(0xFF00C2CB),
    )
  };
  void add(Widget item) {
    var index =
        widgetMap.keys.firstWhere((k) => widgetMap[k] == item, orElse: () => 0);
    print(index);

    favs.add(index);
    notifyListeners();
  }

  void remove(Widget item) {
    var index = widgetMap.keys.firstWhere((k) => widgetMap[k] == item);
    favs.remove(index);
    notifyListeners();
  }
}
