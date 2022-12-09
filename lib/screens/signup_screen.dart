import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/my_password_field.dart';
import '../widgets/my_text_button.dart';
import '../widgets/my_text_field.dart';

class AppSignUpScreen extends StatefulWidget {
  const AppSignUpScreen({super.key});

  @override
  State<AppSignUpScreen> createState() => _AppSignUpScreenState();
}

class _AppSignUpScreenState extends State<AppSignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();
  bool isPasswordVisible = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Theme(
        data: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: isDarkMode ? Colors.black : Colors.white,
            body: Column(children: [
              SizedBox(
                height: height / 20,
              ),
              Row(
                children: [
                  const Spacer(),
                  Image(
                      image: isDarkMode
                          ? const AssetImage(
                          "assets/clueless_logo/logo_dark.png")
                          : const AssetImage(
                          'assets/clueless_logo/logo_light.png'),
                      width: width / 6),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Clueless",
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: isDarkMode
                                ? const Color(0xffF0EEEE)
                                : const Color(0xFF213B7E)),
                      ),
                      Text("Community",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: isDarkMode ?const Color(0xffF0EEEE) : Colors.black,
                          ))
                    ],
                  ),
                  const Spacer(),
                ],
              ),
              SizedBox(
                height: height / 25,
              ),
              SizedBox(
                width: width / 1.2,
                child: MyTextField(
                  labelText: 'Username',
                  hintText: 'Enter Username',
                  inputType: TextInputType.text,
                  controller: _usernameController,
                ),
              ),
              SizedBox(
                width: width / 1.2,
                child: MyTextField(
                  labelText: 'Email',
                  hintText: 'Enter Email Address',
                  inputType: TextInputType.emailAddress,
                  controller: _emailController,
                ),
              ),
              SizedBox(
                width: width / 1.2,
                child: MyPasswordField(
                  controller: _passwordController,
                  isPasswordVisible: isPasswordVisible,
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
              SizedBox(
                width: width / 1.2,
                child: MyTextField(
                  labelText: 'Confirm Password',
                  hintText: 'Enter Password',
                  inputType: TextInputType.visiblePassword,
                  controller: _confirmController,
                ),
              ),
              SizedBox(
                height: height/40,
              ),
              SizedBox(
                width: width / 1.2,
                child: MyTextButton(
                  onTap: () {},
                  buttonName: 'Sign up',
                  bgColor: const Color(0xFF136DD6),
                  textColor: Colors.white,
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Center(
                child: Text(
                  'Or sign up with',
                  style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              SizedBox(
                width: width / 1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          alignment: Alignment.center,
                          width: width / 5.7,
                          height: width / 6,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 5.0,
                                ),
                              ],
                              gradient: LinearGradient(
                                  colors: [Color(0xFF5C5B5B), Colors.black])),
                          child: const FaIcon(FontAwesomeIcons.google,
                              color: Colors.white, size: 20.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          alignment: Alignment.center,
                          width: width / 5.7,
                          height: width / 6,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 5.0,
                                ),
                              ],
                              gradient: LinearGradient(
                                  colors: [Color(0xFF5C5B5B), Colors.black])),
                          child: const FaIcon(FontAwesomeIcons.apple,
                              color: Colors.white, size: 25.0),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(8),
                        child: Container(

                          alignment: Alignment.center,
                          width: width / 5.7,
                          height: width / 6,
                          decoration: const BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0.0, 4.0), //(x,y)
                                  blurRadius: 5.0,
                                ),
                              ],
                              gradient: LinearGradient(
                                  colors: [Color(0xFF5C5B5B), Colors.black])),
                          child: const FaIcon(FontAwesomeIcons.facebookF,
                              color: Colors.white, size: 20.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 20,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[600]),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF2845DB)),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
