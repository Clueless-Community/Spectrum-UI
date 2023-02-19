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
    const Alert1(),
    const Alert2(),
    const Alert3(),
    const Alert4(),
    const Alert5(),
    const Alert6(),
    const Alert7(),
    const Alert8(),
    const Alert9(),
    const Alert10(),
    const Alert11(),
    const Alert12(),
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
