import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class LoginCredentials extends StatelessWidget {
  const LoginCredentials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.3,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(appPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              'Let\'s get started',
              style: TextStyle(
                fontSize: 20,
                color: black.withOpacity(0.6),
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: appPadding),
              child: ClayContainer(
                color: white,
                borderRadius: 30,
                depth: -30,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: appPadding),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Email',
                        border: InputBorder.none,
                        fillColor: black),
                  ),
                ),
              ),
            ),
            ClayContainer(
              color: white,
              borderRadius: 30,
              depth: -30,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: appPadding),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      fillColor: black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: appPadding / 2),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 15,
                    color: black.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }
}
