import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: ClayContainer(
        color: white,
        height: size.height * 0.3,
        depth: 60,
        spread: 20,
        customBorderRadius: const BorderRadius.only(
          topRight: Radius.elliptical(350, 250),
          topLeft: Radius.elliptical(350, 250),
        ),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.07,
            ),
            ClayContainer(
              color: white,
              depth: 20,
              borderRadius: 30,
              curveType: CurveType.convex,
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    vertical: appPadding / 2, horizontal: appPadding * 2),
                child: Text(
                  'LogIn',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 17),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: appPadding),
              child: Text(
                'SignUp',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 17,
                    decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
