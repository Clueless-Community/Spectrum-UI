import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/UI_Pages/bottomNavigation_Roshaen/screen/bottom_bar.dart';
import 'package:flutter_ui/UI_Pages/bottomSheet/screen/bottom_sheet_screen.dart';
import 'package:flutter_ui/UI_Pages/customised_fab_AdiAr11/screen/custom_fab.dart';
import 'package:flutter_ui/UI_Pages/glassmorphism_login_harsh8833/login_screen.dart';
import 'package:flutter_ui/UI_Pages/loginScreen_AnukirtiYadav/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/loginUI_Aaliya-Ali/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/screens/signUp_screen.dart';
import 'package:flutter_ui/UI_Pages/simpleListView_Perumall/listView.dart';
import '../UI_Pages/modelNavBar_Perumall/screens/navbar.dart';
import 'package:flutter_ui/UI_Pages/buttons_sagardev2301/buttons_screen.dart';
import 'package:flutter_ui/UI_Pages/dialog_box_sagardev2301/scrollable_dialog/dialog_box_screen.dart';
import 'package:flutter_ui/UI_Pages/toggleButton_ismailyegnr/screens/toggle_button_screen.dart';

import '../UI_Pages/profile_screen_balamurugan213/screens/profile_screen.dart';
import '../UI_Pages/profile_screen_chandansgowda/screens/profile_screen2.dart';
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
  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Exit App'),
            content: const Text('Do you want to exit an App?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => SystemNavigator.pop(),
                //return true when click on "Yes"
                child: const Text('Yes'),
              ),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
  // Add Your Widget Here

  final List<Map<String, dynamic>> _components = [
    {
      "id": 1,
      "title": "AppBar UI",
      "subTitle": "App Bar design made by Arpit",
      "widget": const AppBarScreen()
    },
    {
      "id": 2,
      "title": "Login UI",
      "subTitle": "Login UI design made by Aaliya",
      "widget": const SkeuomorphicLoginScreen()
    },
    {
      "id": 3,
      "title": "Login UI",
      "subTitle": "Login UI design made by Roshan",
      "widget": const LoginScreen()
    },
    {
      "id": 4,
      "title": "Login UI",
      "subTitle": "Glassmorphism Login made by harsh8833",
      "widget": const GlassmorphismLoginPage()
    },
    {
      "id": 5,
      "title": "Sign Up",
      "subTitle": "A collection of signup page UI",
      "widget": const SignUpScreen()
    },
    {
      "id": 6,
      "title": "Upper Tab Bar",
      "subTitle": "Tabbar designed by pratik",
      "widget": const UpperTabBar()
    },
    {
      "id": 7,
      "title": "Dialog Box",
      "subTitle": "A collection of Dialog Box",
      "widget": const DialogScreen()
    },
    {
      "id": 8,
      "title": "Buttons",
      "subTitle": "A collection of Buttons",
      "widget": const ButtonScreen()
    },
    {
      "id": 9,
      "title": "Bottom Bar",
      "subTitle": "A collection of Bottom Bar",
      "widget": const BottomBar()
    },
    {
      "id": 10,
      "title": "Toggle Button",
      "subTitle": "A collection of Toggle Buttons",
      "widget": const ToggleButtonScreen()
    },
    {
      "id": 11,
      "title": "Floating Action Button",
      "subTitle": "A Customised FAB by Aditya Arora",
      "widget": const CustomFAB()
    },
    {
      "id": 12,
      "title": "Model Nav Bar",
      "subTitle": "NavBar created",
      "widget": const navbar()
    },
    {
      "id": 13,
      "title": "OnBoarding Screen",
      "subTitle": "OnBoarding Screen by sagardev2301",
      "widget": OnBoardingScreen(onPressed: () {})
    },
    {
      "id": 14,
      "title": "Simple ListView Screen",
      "subTitle": "Simple ListView by Perumall",
      "widget": const CustomListView()
    },
    {
      "id": 15,
      "title": "Profile Screen 1",
      "subTitle": "Profile Screen by balamurugan213",
      "widget": const ProfileScreen()
    },
    {
      "id": 16,
      "title": "Profile Screen 2",
      "subTitle": "Profile Screen by chandansgowda",
      "widget": const ProfileScreen2()
    },
    {
      "id": 17,
      "title": "Bottom Sheet Form",
      "subTitle": "A collection of Bottom Sheet Forms",
      "widget": const BottomSheetScreen()
    }
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
    return WillPopScope(
      onWillPop: showExitPopup,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Heading(
              title: "UI Collections",
              count: _found.length.toString(),
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
            // const SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => const Test()));
            //   },
            //   child: const Text("Individual Design Screen"),
            // ),
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
                              subTitle:
                                  "${_found[index]['subTitle']}".toString(),
                              screen: const AppBarScreen(),
                              onTap: () {
                                for (int i = 1; i <= _found.length; i++) {
                                  if (_found[index]['id'] == i) {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              _found[index]['widget']),
                                    );
                                  }
                                }
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
      ),
    );
  }
}
