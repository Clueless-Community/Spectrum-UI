import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/loginScreen_AnukirtiYadav/screens/login_screen.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/screens/signUp_screen.dart';
import 'package:flutter_ui/buttons/widgets/google_sign_in_button.dart';
import '../widgets/heading.dart';
import '../widgets/screen_display.dart';
import '../widgets/searchbar.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: const [
           Heading(
            title: "Buttons",
            count: "1",
          ),
           SizedBox(
            height: 20,
          ),
           SearchBar(),
           SizedBox(
            height: 20,
          ),
          GoogleSignInButton()
        ],
      ),
    ),
    );
  }
}
