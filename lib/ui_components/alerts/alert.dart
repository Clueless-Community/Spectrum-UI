import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert1.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert10.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert11.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert12.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert3.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert4.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert5.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert6.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert7.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert9.dart';

import 'All Alerts/alert2.dart';
import 'All Alerts/alert8.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key});

  final List<Widget> alerts = [
    const Alert1("AMessage", "ADescriptions"),
    const Alert2("AMessage", "ADescriptions"),
    const Alert3("AMessage", "ADescriptions"),
    const Alert4("AMessage", "ADescriptions"),
    const Alert5("AMessage", "ADescriptions"),
    const Alert6("AMessage", "ADescriptions"),
    const Alert7("AMessage", "ADescriptions"),
    const Alert8("AMessage", "ADescriptions"),
    const Alert9("AMessage", "ADescriptions"),
    const Alert10("AMessage", "ADescriptions"),
    const Alert11("AMessage", "ADescriptions"),
    const Alert12("AMessage", "ADescriptions"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: alerts[index],
          );
        },
        itemCount: alerts.length,
      ),
    );
  }
}
