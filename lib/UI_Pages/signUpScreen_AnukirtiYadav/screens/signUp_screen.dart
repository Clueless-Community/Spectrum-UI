// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/widgets/checkbox_widget.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/widgets/textFormField_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? _value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 11, 57),
      body: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextFormFieldWidget(
              hintText: 'Email',
            ),
            const TextFormFieldWidget(
              hintText: 'Password',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckBoxWidget(
                    text: 'Remember me',
                    value: 'YES',
                    groupValue: _value,
                    onChanged: (String value) {}),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Color.fromARGB(255, 112, 102, 134),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: const Color.fromARGB(255, 89, 200, 106),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 2.8,
                    vertical: 18,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(color: Color.fromARGB(255, 3, 11, 57)),
                ),
              ),
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 112, 102, 134),
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 102, 134),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Color.fromARGB(255, 112, 102, 134),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/signUpImages_AnukirtiYadav/google-img.png',
                  height: 45,
                  width: 45,
                ),
                Image.asset(
                  'assets/signUpImages_AnukirtiYadav/twitter-img.png',
                  height: 45,
                  width: 45,
                ),
                Image.asset(
                  'assets/signUpImages_AnukirtiYadav/github-img.png',
                  height: 45,
                  width: 45,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Don\'t have an account? ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 112, 102, 134),
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Create new',
                  style: TextStyle(
                    color: Color.fromARGB(255, 89, 200, 106),
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}
