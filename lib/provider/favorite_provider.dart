import 'package:flutter/material.dart';
import 'package:flutter_component_ui/data/hive_database.dart';

import '../data/export.dart';
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
    14: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert1("AMessage", "ADescriptions"),
    ),
    15: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert2("AMessage", "ADescriptions"),
    ),
    16: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert3("AMessage", "ADescriptions"),
    ),
    17: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert4("AMessage", "ADescriptions"),
    ),
    18: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert5("AMessage", "ADescriptions"),
    ),
    19: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert6("AMessage", "ADescriptions"),
    ),
    20: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert7("AMessage", "ADescriptions"),
    ),
    21: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert8("AMessage", "ADescriptions"),
    ),
    22: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert9("AMessage", "ADescriptions"),
    ),
    23: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert10("AMessage", "ADescriptions"),
    ),
    24: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert11("AMessage", "ADescriptions"),
    ),
    25: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Alert12("AMessage", "ADescriptions"),
    ),
    26: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const FirstCard(),
    ),
    27: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const SecondCard(),
    ),
    28: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const ThirdCard(),
    ),
    29: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const FourthCard(),
    ),
    30: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const FifthCard(),
    ),
    31: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const SixthCard(),
    ),
    32: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const SeventhCard(),
    ),
    33: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      width: double.infinity,
      child: const EightCard(),
    ),
    34: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Avatar2(
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
    ),
    35: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Avatar1(size: 100, imagePath: 'assets/bored.png'),
    ),
    36: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Avatar3(
        size: 100,
        icon: Icon(
          Icons.person_2_outlined,
          color: Colors.white,
          size: 50,
        ),
        backgroundColor: Colors.black,
      ),
    ),
    37: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const TextArea1(
        label: "TextArea1",
        hinttext: "Write Message",
      ),
    ),
    38: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const TextArea2(
        label: "TextArea2",
        hinttext: "Write Description",
      ),
    ),
    39: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const TextArea3(
        label: "TextArea3",
        hinttext: "Write Description",
      ),
    ),
    40: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const TextArea4(
        label: "TextArea4",
        hinttext: "Write Description",
      ),
    ),
    41: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const InputField1(
        label: "Title",
        hinttext: "Input Title",
      ),
    ),
    42: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const InputField2(
        label: "Title Lite",
        hinttext: "Input Title",
      ),
    ),
    43: const InputField3(
      label: "Title Highlighted",
      hinttext: "Input Title",
    ),
    44: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const InputField4(
        label: "Title Lite-X",
        hinttext: "Input Title",
      ),
    ),
    45: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      child: const InputField5(
        label: "Title Type B",
        hinttext: "Input Title",
      ),
    ),
    46: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Slider4(
        activeColor: Colors.white,
        inactiveColor: Colors.black,
        maxRange: 100,
      ),
    ),
    47: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Slider1(
        activeColor: Colors.cyan,
        inactiveColor: Colors.black,
        maxRange: 100.0,
      ),
    ),
    48: const Padding(
      padding: EdgeInsets.all(12.0),
      child: Slider3(
        activeColor: Colors.red,
        inactiveColor: Colors.white,
        maxRange: 100,
      ),
    ),
    // 49: const Slider5(
    //   activeColor: Colors.pink,
    //   inactiveColor: Colors.amberAccent,
    //   maxRange: 100,
    // ),
    // 50: const Slider6(
    //   activeColor: Colors.lightBlueAccent,
    //   inactiveColor: Color(0xFF005F99),
    //   maxRange: 60,
    // ),
    51: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Slider2(
        activeColor: const Color(0xFF005F99),
        inactiveColor: Colors.purple.shade600,
        maxRange: 100,
      ),
    ),
    52: const Padding(
      padding: EdgeInsets.all(8.0),
      child: InboxMessage1(
        name: "ClueLess",
        username: "clueless@gmail.com",
        msg: "Hey let's start",
        imgUrl: 'https://picsum.photos/seed/407/600',
      ),
    ),
    53: const Padding(
      padding: EdgeInsets.all(8.0),
      child: InboxMessage2(
        name: "ClueLess",
        username: "clueless@gmail.com",
        msg: "Hey let's start",
        imgUrl: 'https://picsum.photos/seed/407/600',
      ),
    ),
    54: const Padding(
      padding: EdgeInsets.all(8.0),
      child: InboxMessage3(
        name: "ClueLess",
        username: "clueless@gmail.com",
        msg: "Hey let's start",
        imgUrl: 'https://picsum.photos/seed/407/600',
      ),
    ),
    55: const Padding(
      padding: EdgeInsets.all(8.0),
      child: InboxMessage4(
        name: "ClueLess",
        username: "clueless@gmail.com",
        msg: "Hey let's start ",
        imgUrl: 'https://picsum.photos/seed/407/600',
      ),
    ),
    56: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Message1(
        message: "Hello boy",
      ),
    ),
    57: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Message2(
        message: "Hello broo",
      ),
    ),
    58: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Message3(
        message: "Hey whats up man",
      ),
    ),
    59: const Padding(
      padding: EdgeInsets.all(8.0),
      child: Message4(
        message: "Hello broo",
      ),
    ),
    60: const Padding(
      padding: EdgeInsets.all(8.0),
      child: PricingCard1(
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
    65: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Page1(
        iconColor: Colors.black,
        containerColor: Colors.white,
        textColor: Colors.black,
        hightlightColor: Color(0xFF005F99),
      ),
    ),
    66: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Page2(
        iconColor: Colors.black,
        textColor: Colors.black,
        // highlightedColor: Colors.blue,
      ),
    ),
    67: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Page3(
        iconColor: Colors.white,
        containerColor: Colors.black,
        textColor: Colors.white,
      ),
    ),
    68: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Page4(
        iconColor: Colors.black,
        containerColor: Colors.white,
        textColor: Colors.black,
      ),
    ),
    69: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Page5(
        iconColor: Colors.black,
        containerColor: Colors.white,
        textColor: Colors.black,
        hightlightColor: Color(0xFF00C2CB),
      ),
    ),
    70: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        width: double.infinity,
        child: const BasicStepper(),
      ),
    ),
    71: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        width: double.infinity,
        child: const StepperwihCustomIcon(),
      ),
    ),
    72: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        width: double.infinity,
        child: const StepperwithValidation(),
      ),
    ),
    73: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        width: double.infinity,
        child: const StepperwithCustomColor(),
      ),
    ),
    74: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minWidth: 400.0,
          maxWidth: 500.0,
          minHeight: 50.0,
          maxHeight: 100.0,
        ),
        child: const Bottom_Navbar1(),
      ),
    ),
    75: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minWidth: 400.0,
          maxWidth: 500.0,
          minHeight: 50.0,
          maxHeight: 100.0,
        ),
        child: const Bottom_Navbar2(),
      ),
    ),
    76: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minWidth: 400.0,
          maxWidth: 500.0,
          minHeight: 50.0,
          maxHeight: 100.0,
        ),
        child: const Bottom_Navbar3(),
      ),
    ),
    77: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minWidth: 400.0,
          maxWidth: 500.0,
          minHeight: 50.0,
          maxHeight: 100.0,
        ),
        child: const Bottom_Navbar5(),
      ),
    ),
    78: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        constraints: const BoxConstraints(
          minWidth: 400.0,
          maxWidth: 500.0,
          minHeight: 50.0,
          maxHeight: 100.0,
        ),
        child: const Bottom_Navbar6(),
      ),
    ),
    79: Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      constraints: const BoxConstraints(
        minWidth: 400.0,
        maxWidth: 500.0,
        minHeight: 50.0,
        maxHeight: 100.0,
      ),
      child: const Bottom_Navbar4(),
    ),
  };

  final db = HiveDatabase();
  void prepareData() {
    if (db.readData().isNotEmpty) {
      favs = db.readData();
    }
  }

  void add(int index) {
    favs.add(index);
    db.saveData(favs);
    notifyListeners();
  }

  void remove(int index) {
    favs.remove(index);
    db.saveData(favs);
    notifyListeners();
  }

  bool starred(int index) {
    return favs.contains(index);
  }
}
