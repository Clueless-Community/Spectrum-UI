import 'package:flutter/material.dart';

class UpperTabBar extends StatefulWidget {
  const UpperTabBar({super.key});

  @override
  State<UpperTabBar> createState() => _UpperTabBarState();
}

class _UpperTabBarState extends State<UpperTabBar> {
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: tabIndex,
      child: Scaffold(
        appBar: AppBar(),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              color: Colors.green,
              child: const Center(
                child: GoToThirdTabButton(),
              ),
            ),
            Container(color: Colors.red),
            Container(color: Colors.yellow),
            Container(color: Colors.cyan),
          ],
        ),
        bottomNavigationBar: const TabBar(
          labelColor: Colors.black45,
          tabs: [
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('green')),
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('red')),
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('yellow')),
            Padding(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                child: Text('cyan')),
          ],
        ),
      ),
    );
  }
}

class GoToThirdTabButton extends StatelessWidget {
  const GoToThirdTabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: const Text('to Tab 3'),
        onPressed: () {
          DefaultTabController.of(context)!.animateTo(2);
        });
  }
}
