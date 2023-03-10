import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/card_1.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/card_2.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/card_3.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/card_4.dart';
import 'package:flutter_component_ui/ui_components/cards/All%20Cards/card_5.dart';

import 'All Cards/card_6.dart';
import 'All Cards/card_7.dart';
import 'All Cards/card_8.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            Padding(
                padding:
                    EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
                child: FirstCard()),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
              child: FittedBox(
                child: SecondCard(),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
              child: ThirdCard(),
            ),
            SizedBox(height: 20),
            Padding(
             padding:
                  EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
              child: FittedBox(child: FourthCard()),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: FittedBox(child: FifthCard()),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: FittedBox(child: SixthCard()),
            ),
             SizedBox(height: 20),
            Padding(
             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: FittedBox(child: SeventhCard()),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: FittedBox(child: EightCard()),
            )
          ],
        ),
      ),
    );
  }
}
