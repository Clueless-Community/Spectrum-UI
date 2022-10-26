import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/loginScreen_AnukirtiYadav/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart';
import 'package:flutter_ui/screens/individual_design/individual_design.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: IndividualDesign(
          widgetname: "OnBoarding Screen",
          owner: "sagardev2301",
          repositryname: "flutter-ui-components",
          branch: "master",
          widgetPaths: const [
            "lib/UI_Pages/onboardingUiPage_sagardev2301/onboarding_screen.dart",
            "lib/UI_Pages/onboardingUiPage_sagardev2301/widget/bottomButton.dart",
            "lib/UI_Pages/onboardingUiPage_sagardev2301/widget/onboarding_widget.dart",
          ],
          widget: OnBoardingScreen(
            onPressed: (){},
          ),
          image: Image.asset("assets/onboardingScreen_images_sagardev2301/widget.png"),
        ),
      ),
    );
  }
}
