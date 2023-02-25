import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_component_ui/data/widget_category.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/components_card.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 51.0,
        items: <Widget>[
          Image.asset((_page == 0)
              ? "assets/icons/home_filled.png"
              : "assets/icons/home.png"),
          Image.asset((_page == 1)
              ? "assets/icons/profile_filled.png"
              : "assets/icons/profile.png"),
          Image.asset((_page == 2)
              ? "assets/icons/night_filled.png"
              : "assets/icons/night.png"),
          Image.asset((_page == 3)
              ? "assets/icons/favs_filled.png"
              : "assets/icons/favs.png"),
          Image.asset((_page == 4)
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
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 45, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'UI Components',
                style: TextStyle(
                    color: const Color.fromRGBO(55, 80, 206, 1),
                    fontSize: 24,
                    fontFamily: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                    ).fontFamily),
              ),
              const SizedBox(
                height: 15,
              ),
              const StagList()
            ],
          ),
        ),
      ),
    );
  }
}

class StagList extends StatelessWidget {
  const StagList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 18,
      children: widgetCategoryData
          .map((e) => ComponentsCard(
                title: e['categoryName'],
                components: e['categoryScreen'],
              ))
          .toList(),
    );
  }
}
