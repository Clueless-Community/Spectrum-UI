import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class Bottom_Navbar4 extends StatefulWidget {
  const Bottom_Navbar4({super.key});

  @override
  State<Bottom_Navbar4> createState() => _Bottom_Navbar4State();
}

class _Bottom_Navbar4State extends State<Bottom_Navbar4> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: IndexedStack(
          index: currentIndex,
          children: [
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Center(
                child: Text("Mail"),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Center(
                child: Text("Home"),
              ),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Center(
                child: Text("Favorite"),
              ),
            ),
            // ignore: avoid_unnecessary_containers
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          inactiveIconColor: Colors.black26,
          waterDropColor: Colors.blue,
          backgroundColor: Colors.white,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          barItems: [
            BarItem(
              filledIcon: Icons.mail,
              outlinedIcon: Icons.mail_outline,
            ),
            BarItem(
              filledIcon: Icons.home,
              outlinedIcon: Icons.home_outlined,
            ),
            BarItem(
              filledIcon: Icons.star,
              outlinedIcon: Icons.star_outline,
            ),
          ],
        ),
      ),
    );
  }
}
