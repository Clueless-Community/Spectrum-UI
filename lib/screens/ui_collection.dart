import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/bottomNavigation_Roshaen/screen/bottom_bar.dart';
import 'package:flutter_ui/UI_Pages/bottomSheet/screen/bottom_sheet_screen.dart';
import 'package:flutter_ui/UI_Pages/customised_fab_AdiAr11/screen/custom_fab.dart';
import 'package:flutter_ui/UI_Pages/loginScreen_AnukirtiYadav/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/loginUI_Aaliya-Ali/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/screens/signUp_screen.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listView.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listViewScreen.dart';
import '../UI_Pages/modelNavBar_Perumall/screens/navbar.dart';
import 'package:flutter_ui/UI_Pages/buttons_sagardev2301/buttons_screen.dart';
import 'package:flutter_ui/UI_Pages/dialog_box_sagardev2301/scrollable_dialog/dialog_box_screen.dart';
import 'package:flutter_ui/UI_Pages/toggleButton_ismailyegnr/screens/toggle_button_screen.dart';

import '../UI_Pages/profile_screen_balamurugan213/screens/profile_screen.dart';
import '../UI_Pages/upperTabbar_pratikagr/screens/upper_tab_bar.dart';
import '../UI_Pages/appBar_ArpitSahu01/screens/appBarUI_screen.dart';
import '../widgets/heading.dart';
import '../widgets/screen_display.dart';

class UiCollection extends StatefulWidget {
  const UiCollection({super.key});

  @override
  State<UiCollection> createState() => _UiCollectionState();
}

class _UiCollectionState extends State<UiCollection> {
  final List<Map<String, dynamic>> _components = [
    {
      "id": 1,
      "title": "AppBar UI",
      "subTitle": "App Bar design made by Arpit",
    },
    {
      "id": 2,
      "title": "Login UI",
      "subTitle": "Login UI design made by Aaliya",
    },
    {
      "id": 3,
      "title": "Login UI",
      "subTitle": "Login UI design made by Roshan",
    },
    {
      "id": 4,
      "title": "Sign Up",
      "subTitle": "A collection of signup page UI",
    },
    {
      "id": 5,
      "title": "Upper Tab Bar",
      "subTitle": "Tabbar designed by pratik",
    },
    {
      "id": 6,
      "title": "Dialog Box",
      "subTitle": "A collection of Dialog Box",
    },
    {
      "id": 7,
      "title": "Buttons",
      "subTitle": "A collection of Buttons",
    },
    {
      "id": 8,
      "title": "Bottom Bar",
      "subTitle": "A collection of Bottom Bar",
    },
    {
      "id": 9,
      "title": "Toggle Button",
      "subTitle": "A collection of Toggle Buttons",
    },
    {
      "id": 10,
      "title": "Floating Action Button",
      "subTitle": "A Customised FAB by Aditya Arora",
    },
    {
      "id": 11,
      "title": "Model Nav Bar",
      "subTitle": "NavBar created",
    },
    {
      "id": 12,
      "title": "OnBoarding Screen",
      "subTitle": "OnBoarding Screen by sagardev2301",
    },
    {
      "id": 13,
      "title": "Simple ListView Screen",
      "subTitle": "Simple ListView by Perumall",
    },
    {
      "id": 14,
      "title": "Profile Screen",
      "subTitle": "Profile Screen by balamurugan213",
    },
  ];

  List<Map<String, dynamic>> _found = [];

  @override
  void initState() {
    _found = _components;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _components;
    } else {
      results = _components
          .where((user) => (user["title"])
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _found = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Heading(
            title: "UI Collections",
            count: "13",
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                labelText: "Search",
                prefixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromARGB(200, 200, 200, 200)),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                _found.isNotEmpty
                    ? ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemCount: _found.length,
                        itemBuilder: ((context, index) {
                          return WidgetButton(
                            title: "${_found[index]['title']}".toString(),
                            subTitle: "${_found[index]['subTitle']}".toString(),
                            screen: const AppBarScreen(),
                            onTap: () {
                              _found[index]['id'].toString() == '1'
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AppBarScreen()),
                                    )
                                  : _found[index]['id'].toString() == '2'
                                      ? Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SkeuomorphicLoginScreen()),
                                        )
                                      : _found[index]['id'].toString() == '3'
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginScreen()),
                                            )
                                          : _found[index]['id'].toString() ==
                                                  '4'
                                              ? Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignUpScreen()),
                                                )
                                              : _found[index]['id'].toString() ==
                                                      '5'
                                                  ? Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              const UpperTabBar()),
                                                    )
                                                  : _found[index]['id']
                                                              .toString() ==
                                                          '6'
                                                      ? Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const DialogScreen()),
                                                        )
                                                      : _found[index]['id']
                                                                  .toString() ==
                                                              '7'
                                                          ? Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ButtonScreen()),
                                                            )
                                                          : _found[index]['id']
                                                                      .toString() ==
                                                                  '8'
                                                              ? Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              const BottomBar()),
                                                                )
                                                              : _found[index]['id']
                                                                          .toString() ==
                                                                      '9'
                                                                  ? Navigator
                                                                      .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              const ToggleButtonScreen()),
                                                                    )
                                                                  : _found[index]['id']
                                                                              .toString() ==
                                                                          '10'
                                                                      ? Navigator
                                                                          .push(
                                                                          context,
                                                                          MaterialPageRoute(
                                                                              builder: (context) => const CustomFAB()),
                                                                        )
                                                                      : _found[index]['id'].toString() ==
                                                                              '11'
                                                                          ? Navigator
                                                                              .push(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => const navbar()),
                                                                            )
                                                                          : _found[index]['id'].toString() == '12'
                                                                              ? Navigator.push(
                                                                                  context,
                                                                                  MaterialPageRoute(builder: (context) => OnBoardingScreen(onPressed: () {})),
                                                                                )
                                                                              : _found[index]['id'].toString() == '13'
                                                                                  ? Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(builder: (context) => const listView()),
                                                                                    )
                                                                                  : Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(builder: (context) => const ProfileScreen()),
                                                                                    );
                            },
                          );
                        }),
                      )
                    : const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'No results found, Please try with diffrent search',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
