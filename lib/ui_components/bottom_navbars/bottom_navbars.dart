import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:provider/provider.dart';
import '../../theme/theme.dart';
import 'allBottomNavigationBars/animated_navbar/bottom_navbar4.dart';
import 'allBottomNavigationBars/basic_navbars/bottom_navbar1.dart';
import 'allBottomNavigationBars/basic_navbars/bottom_navbar2.dart';
import 'allBottomNavigationBars/fab_navbars/bottom_navbar3.dart';
import 'allBottomNavigationBars/fab_navbars/bottom_navbar5.dart';
import 'allBottomNavigationBars/fab_navbars/bottom_navbar6.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => BottomNavBarScreenState();
}

class BottomNavBarScreenState extends State<BottomNavBarScreen> {
  final basicbottomNavbar = [
    const Bottom_Navbar1(),
    const Bottom_Navbar2(),
  ];
  List<int> basicbottomNavbarIndex = [74, 75];

  final fabbottomNavbar = [
    const Bottom_Navbar3(),
    const Bottom_Navbar5(),
    const Bottom_Navbar6(),
  ];
  List<int> fabbottomNavbarIndex = [76, 77, 78];

  final animatedbottomNavbar = [
    const Bottom_Navbar4(),
  ];
  List<int> animatedbottomNavbarIndex = [79];

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
                  child: Text("Basic Bottom Nav-Bars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  basicbottomNavbarIndex.length,
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
                          child: basicbottomNavbar[index],
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
                                      .add(basicbottomNavbarIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel.starred(
                                          basicbottomNavbarIndex[index]))
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Animated Bottom Nav-Bars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  animatedbottomNavbarIndex.length,
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
                          child: animatedbottomNavbar[index],
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
                                      .add(animatedbottomNavbarIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel.starred(
                                          animatedbottomNavbarIndex[index]))
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
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("FAB Bottom Nav-Bars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor)),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  fabbottomNavbarIndex.length,
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
                          child: fabbottomNavbar[index],
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
                                      .add(fabbottomNavbarIndex[index]);
                                  setState(() {});
                                },
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: (favProviderModel
                                          .starred(fabbottomNavbarIndex[index]))
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
