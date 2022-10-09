import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/screens/signUp_screen.dart';
import 'package:flutter_ui/UI_Pages/signUpScreen_AnukirtiYadav/widgets/textFormField_widget.dart';
import 'package:glassmorphism/glassmorphism.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 11, 57),
      body: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(18),
        child: GlassmorphicContainer(
          width: 400,
          height: 800,
          borderRadius: 20,
          blur: 5,
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFffffff).withOpacity(0.04),
              const Color(0xFFFFFFFF).withOpacity(0.1),
            ],
          ),
          borderGradient: LinearGradient(
            colors: [
              const Color(0xFFffffff).withOpacity(0.6),
              const Color((0xFFFFFFFF)).withOpacity(0.2),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextFormFieldWidget(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const TextFormFieldWidget(
                  hintText: 'Password',
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                const SizedBox(
                  height: 50,
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
                        horizontal: MediaQuery.of(context).size.width / 3.3,
                        vertical: 18,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Color.fromARGB(255, 3, 11, 57)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 112, 102, 134),
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 89, 200, 106),
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
