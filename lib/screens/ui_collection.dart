import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/bottomNavigation_Roshaen/screen/bottom_bar.dart';
import 'package:flutter_ui/UI_Pages/loginScreen_AnukirtiYadav/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/loginUI_Aaliya-Ali/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/screens/signUp_screen.dart';
import 'package:flutter_ui/buttons_sagardev2301/buttons_screen.dart';
import '../UI_Pages/modelNavBar_Perumall/screens/navbar.dart';
import '../UI_Pages/toggleButton_ismailyegnr/screens/toggleButton_screen.dart';
import '../dialog_box_sagardev2301/scrollable_dialog/dialog_box_screen.dart';
import 'package:flutter_ui/UI_Pages/buttons_sagardev2301/buttons_screen.dart';
import 'package:flutter_ui/UI_Pages/dialog_box_sagardev2301/scrollable_dialog/dialog_box_screen.dart';
import 'package:flutter_ui/UI_Pages/toggleButton_ismailyegnr/screens/toggle_button_screen.dart';

import '../UI_Pages/upperTabbar_pratikagr/screens/upper_tab_bar.dart';
import '../widgets/heading.dart';
import '../widgets/screen_display.dart';
import '../widgets/searchbar.dart';

class UiCollection extends StatelessWidget {
  const UiCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Heading(
            title: "UI Collections",
            count: "9",
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchBar(),
          const SizedBox(
            height: 20,
          ),
          WidgetButton(
            title: "Login UI",
            subTitle: "Login UI design made by Aaliya",
            screen: const SkeuomorphicLoginScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SkeuomorphicLoginScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Login UI",
            subTitle: "Login UI design made by Roshan",
            screen: const LoginScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Sign Up",
            subTitle: "A collection of signup page UI",
            screen: const SignUpScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Upper Tab Bar",
            subTitle: "Tabbar designed by pratik",
            screen: const UpperTabBar(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UpperTabBar()),
              );
            },
          ),
          WidgetButton(
            title: "Dialog Box",
            subTitle: "A collection of Dialog Box",
            screen: const DialogScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DialogScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Buttons",
            subTitle: "A collection of Buttons",
            screen: const ButtonScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ButtonScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Bottom Bar",
            subTitle: "A collection of Bottom Bar",
            screen: const BottomBar(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BottomBar()),
              );
            },
          ),
          WidgetButton(
            title: "Toggle Button",
            subTitle: "A collection of Toggle Buttons",
            screen: const ToggleButtonScreen(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ToggleButtonScreen()),
              );
            },
          ),
          WidgetButton(
            title: "Model Nav Bar",
            subTitle: "NavBar created",
            screen: const navbar(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const navbar()),
              );
             },
            ),
          WidgetButton(
            title: "OnBoarding Screen",
            subTitle: "OnBoarding Screen designed by sagardev2301",
            screen: OnBoardingScreen(
              onPressed: (){},
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OnBoardingScreen(onPressed: (){})),
              );
            },
          ),
        ],
      ),
    );
  }
}
