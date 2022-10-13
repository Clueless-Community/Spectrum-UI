import "package:flutter/material.dart";

class GoogleSignInButton extends StatefulWidget {
  const GoogleSignInButton({super.key});

  @override
  State<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Sign in button pressed");
      },
      child: Card(
        elevation: 3,
        child: SizedBox(
          height: 65,
          width: MediaQuery.of(context).size.width * 0.85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/buttons_images/google_PNG19635.png"),
              const Text(
                "Sign in with Google",
                style: TextStyle(fontSize: 22, color: Color(0xff7e7e7e)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
