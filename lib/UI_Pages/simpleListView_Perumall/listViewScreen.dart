import 'package:flutter/material.dart';
import 'package:flutter_ui/widgets/heading.dart';
import 'package:flutter_ui/widgets/screen_display.dart';
import 'package:flutter_ui/widgets/searchbar.dart';

class listViewScreen extends StatefulWidget {
  const listViewScreen({super.key});

  @override
  State<listViewScreen> createState() => _listViewScreenState();
}

class _listViewScreenState extends State<listViewScreen> {
  final List<Map<String, dynamic>> _items = [
    {
      "id": 1,
      "title": "Retro Login",
      "subTitle": "A collection of Login page UI",
    },
    {
      "id": 2,
      "title": "Simple Login",
      "subTitle": "A collection of SignUp page UI",
    },
    {
      "id": 3,
      "title": "Dark Theme Login",
      "subTitle": "A collection of App bar widgets designs",
    },
    {
      "id": 4,
      "title": "Glassmorphism Login",
      "subTitle": "A collection of modals widgets designs",
    },
    {
      "id": 5,
      "title": "Minimal Login",
      "subTitle": "A collection of buttons designs",
    },
    {
      "id": 6,
      "title": "Cute Login",
      "subTitle": "A collection of Outline button designs",
    },
    {
      "id": 7,
      "title": "Abstract Login",
      "subTitle": "A collection of flutter designs",
    },
    {
      "id": 8,
      "title": "Bottom Bar",
      "subTitle": "A collection of Bottom Bar design",
    },
    {
      "id": 9,
      "title": "Retro Login",
      "subTitle": "A collection of Login page UI",
    },
    {
      "id": 10,
      "title": "Simple Login",
      "subTitle": "A collection of SignUp page UI",
    },
    {
      "id": 11,
      "title": "Dark Theme Login",
      "subTitle": "A collection of App bar widgets designs",
    },
    {
      "id": 12,
      "title": "Glassmorphism Login",
      "subTitle": "A collection of modals widgets designs",
    },
    {
      "id": 13,
      "title": "Minimal Login",
      "subTitle": "A collection of buttons designs",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Heading(
            title: "Login UI",
            count: "13",
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchBar(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  itemCount: _items.length,
                  itemBuilder: ((context, index) {
                    return WidgetButton(
                      title: "${_items[index]['title']}".toString(),
                      subTitle: "${_items[index]['subTitle']}".toString(),
                      onTap: () {},
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
