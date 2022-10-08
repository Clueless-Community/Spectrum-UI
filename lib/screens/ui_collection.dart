import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/test_screen.dart';
import '../widgets/heading.dart';
import '../widgets/screen_display.dart';
import '../widgets/searchbar.dart';

class UiCollection extends StatelessWidget {
  const UiCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Heading(
            title: "UI Collections",
            count: "2",
          ),
          SizedBox(
            height: 20,
          ),
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          WidgetButton(
            title: "Login UI",
            subTitle: "Login UI design made by Roshan",
            screen: Test(),
          ),
        ],
      ),
    );
  }
}
