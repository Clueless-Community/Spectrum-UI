import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/buttons/All%20Buttons/button7.dart';

import 'All Buttons/button1.dart';
import 'All Buttons/button2.dart';
import 'All Buttons/button3.dart';
import 'All Buttons/button4.dart';
import 'All Buttons/button5.dart';
import 'All Buttons/button6.dart';
import 'All Buttons/button7.dart';




class ButtonScreen extends StatelessWidget {
 ButtonScreen({super.key});
final List<Widget> buttons1 = [ Button1("button"),   Button3("button"), Button5("button") , Button7("button")];
final List<Widget> buttons2 = [ Button2("button"),   Button4("button"), Button6("button") ,  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          Container(
            width:(MediaQuery.of(context).size.width/2 - 20),
            child: ListView.builder(itemBuilder:(context, index)
            {
              return Padding(padding: const EdgeInsets.all(8.0),
              child: buttons1[index],
              );
            },
            itemCount: buttons1.length,
            ),
          ),
          Container(
            width:(MediaQuery.of(context).size.width/2 - 20),
            child: ListView.builder(itemBuilder:(context, index)
            {
              return Padding(padding: const EdgeInsets.all(8.0),
              child: buttons2[index],
              );
            },
            itemCount: buttons2.length,
            ),
          ),
        ],
      ),
    );
  }
}
