import 'package:flutter/material.dart';
import 'package:flutter_ui/buttons_sagardev2301/widgets/google_sign_in_button.dart';
import '../widgets/heading.dart';
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
            GoogleSignInButton(),
            
          ],
        ),
      ),
    );
  }
}
