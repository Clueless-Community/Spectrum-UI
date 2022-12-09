import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/glassmorphism_login_harsh8833/frostedBg.dart';

TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

void resetFeilds() {
  emailController.text = "";
  passController.text = "";
}

class GlassmorphismLoginPage extends StatefulWidget {
  const GlassmorphismLoginPage({Key? key}) : super(key: key);

  @override
  State<GlassmorphismLoginPage> createState() => _GlassmorphismLoginPageState();
}

class _GlassmorphismLoginPageState extends State<GlassmorphismLoginPage> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    final totalWidth = MediaQuery.of(context).size.width;
    final totalHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: FrostedBackground(
          child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: totalHeight * .08,
            ),
            const Text(
              "Hello Again!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.9),
            ),
            SizedBox(
              height: totalHeight * .01,
            ),
            const Text(
              "Welcome back you've\nbeen missed!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(
              height: totalHeight * .05,
            ),
            inputContainer(
              child: TextField(
                controller: emailController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Enter username',
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  ),
                  floatingLabelStyle:
                      TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
            ),
            inputContainer(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: totalWidth * 0.65,
                    child: TextField(
                      controller: passController,
                      obscureText: obscure,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                        floatingLabelStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (() {
                      setState(() {
                        obscure = !obscure;
                      });
                    }),
                    child: Icon(
                      (obscure)
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      size: 20,
                      color: (obscure)
                          ? Colors.blueGrey
                          : Theme.of(context).primaryColor,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: totalHeight * .01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Recovery Password",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                )
              ],
            ),
            SizedBox(
              height: totalHeight * .025,
            ),
            appButton(text: "Sign In", onTap: () {}, context: context),
            SizedBox(
              height: totalHeight * .02,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(width: totalWidth * 0.3, child: const Divider()),
              const Text(
                "Or continue with",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: totalHeight * 0.12,
              ),
              SizedBox(width: totalWidth * 0.3, child: const Divider()),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              socialButton(
                  onTap: () {},
                  icon: Image.asset(
                    'assets/glassmorph_login_harsh8833/google_icon.png',
                    height: 25,
                  )),
              socialButton(
                  onTap: () {},
                  icon: Image.asset(
                    'assets/glassmorph_login_harsh8833/apple_icon.png',
                    height: 28,
                  )),
              socialButton(
                  onTap: () {},
                  icon: const Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 32,
                  )),
            ]),
            SizedBox(
              height: totalHeight * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.w600,
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.indigo),
                    ))
              ],
            )
          ]),
        ),
      )),
    );
  }

  Container inputContainer({child}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }

  Container appButton({onTap, text, context}) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(0.15),
            blurRadius: 40,
            spreadRadius: 20,
            offset: const Offset(0, 20))
      ]),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: MaterialButton(
        onPressed: onTap,
        elevation: 1,
        color: Theme.of(context).primaryColor,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Container socialButton({onTap, icon}) {
    return Container(
      height: 50,
      width: 70,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 1)),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onPressed: onTap,
        child: icon,
      ),
    );
  }
}
