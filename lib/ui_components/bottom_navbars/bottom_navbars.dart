import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:flutter_component_ui/ui_components/bottom_navbars/allBottomNavigationBars/bottom_navbar1.dart';
import 'package:flutter_component_ui/ui_components/bottom_navbars/allBottomNavigationBars/bottom_navbar2.dart';

import 'package:provider/provider.dart';

import '../../theme/theme.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => BottomNavBarScreenState();
}

class BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final bottomNavbar = [
    const Bottom_Navbar1(),
    const Bottom_Navbar2(),
  ];
  List<Color?> bottomNavbarColor = [null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Navigation Bars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  bottomNavbar.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 400.0, // Set the minimum width constraint
                            maxWidth: 500.0, // Set the maximum width constraint
                            minHeight:
                                50.0, // Set the minimum height constraint
                            maxHeight:
                                100.0, // Set the maximum height constraint
                          ),
                          child: bottomNavbar[index],
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
                                  favProviderModel.add(
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 12,
                                        vertical: 8,
                                      ),
                                      constraints: const BoxConstraints(
                                        minWidth:
                                            400.0, // Set the minimum width constraint
                                        maxWidth:
                                            500.0, // Set the maximum width constraint
                                        minHeight:
                                            50.0, // Set the minimum height constraint
                                        maxHeight:
                                            100.0, // Set the maximum height constraint
                                      ),
                                      child: bottomNavbar[index],
                                    ),
                                  );
                                  setState(() {
                                    bottomNavbarColor[index] = Colors.amber;
                                  });
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: bottomNavbarColor[index],
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
