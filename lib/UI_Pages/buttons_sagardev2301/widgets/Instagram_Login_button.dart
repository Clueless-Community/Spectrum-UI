import "package:flutter/material.dart";

class Insta_Login extends StatefulWidget {
  const Insta_Login({Key? key}) : super(key: key);

  @override
  State<Insta_Login> createState() => _Insta_LoginState();
}

class _Insta_LoginState extends State<Insta_Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      width: 1000,
      height: 50,
      child: ElevatedButton(
        onPressed: (){},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 149, 246, 1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)
            ),
          ),
        ),
        child:Text(
          'Log in',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
