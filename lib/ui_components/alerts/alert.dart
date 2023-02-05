import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/alerts/All%20Alerts/alert1.dart';

import 'All Alerts/alert2.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key});

  final List<Widget> alerts = [const Alert1(), const Alert2()];

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
