import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';

import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert1.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert2.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert3.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert4.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert5.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert6.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert7.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert8.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert9.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert10.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert11.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert12.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({super.key});

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  final List<Widget> coluredAlerts = [
    const Alert1("AMessage", "ADescriptions"),
    const Alert2("AMessage", "ADescriptions"),
    const Alert3("AMessage", "ADescriptions"),
    const Alert4("AMessage", "ADescriptions"),
  ];

  List<int> coluredAlertsIndex = [14, 15, 16, 17];

  final List<Widget> simpleAlerts = [
    const Alert5("AMessage", "ADescriptions"),
    const Alert6("AMessage", "ADescriptions"),
    const Alert7("AMessage", "ADescriptions"),
    const Alert8("AMessage", "ADescriptions"),
  ];

  List<int> simpleAlertsIndex = [18, 19, 20, 21];

  final List<Widget> simpleAlertsDarkMode = [
    const Alert9("AMessage", "ADescriptions"),
    const Alert10("AMessage", "ADescriptions"),
    const Alert11("AMessage", "ADescriptions"),
    const Alert12("AMessage", "ADescriptions"),
  ];

  List<int> simpleAlertsDarkModeIndex = [22, 23, 24, 25];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Colured Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Coloured Alerts",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.lightBluishColor)),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  coluredAlerts.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: coluredAlerts[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(coluredAlertsIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(coluredAlertsIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Simple Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Simple Alerts",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor),
                    ),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  simpleAlerts.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: simpleAlerts[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(simpleAlertsIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(simpleAlertsIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //Dark Mode Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dark Mode Alerts",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor),
                    ),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  simpleAlertsDarkMode.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: simpleAlertsDarkMode[index],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 3, 20, 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Add to favorite'),
                              const SizedBox(
                                width: 5,
                              ),
                              GestureDetector(
                                onTap: () {
                                  favProviderModel
                                      .add(simpleAlertsIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(simpleAlertsIndex[index]))
                                      ? Colors.amber
                                      : null,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
