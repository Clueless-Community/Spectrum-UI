import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/fav_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/home.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/personal_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/random_page.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/videos_page.dart';

final screen = [
  const Home(),
  const PersonalPage(),
  const RandomPage(),
  const FavPage(),
  const VideosPage(),
];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: index,
        height: 55.0,
        items: <Widget>[
          Image.asset((index == 0)
              ? "assets/icons/home_filled.png"
              : "assets/icons/home.png"),
          Image.asset((index == 1)
              ? "assets/icons/profile_filled.png"
              : "assets/icons/profile.png"),
          Image.asset((index == 2)
              ? "assets/icons/night_filled.png"
              : "assets/icons/night.png"),
          Image.asset((index == 3)
              ? "assets/icons/favs_filled.png"
              : "assets/icons/favs.png"),
          Image.asset((index == 4)
              ? "assets/icons/video_filled.png"
              : "assets/icons/video.png"),
        ],
        color: Theme.of(context).colorScheme.background,
        // buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            this.index = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: screen[index],
    );
  }
}
