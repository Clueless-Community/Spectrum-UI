import 'package:flutter/material.dart';

import '../widgets/detail_card_widget.dart';
import '../widgets/heading_text_widget.dart';
import '../widgets/profile_picture_widget.dart';
import '../widgets/status_card_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 251, 251),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(child: _buildContext(context)),
      ),
    );
  }

  Column _buildContext(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 40,
      ),
      SizedBox(
        height: 50,
        width: 800,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Back",
                style: Theme.of(context).textTheme.headlineMedium,
              )),
          IconButton(
              iconSize: 32,
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert_outlined,
              ))
        ]),
      ),
      const ProfilePictureWidget(),
      SizedBox(
        width: 800,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            StatusCardWidget(name: 'Applied', value: '28'),
            StatusCardWidget(name: 'Reviewed', value: '73'),
            StatusCardWidget(name: 'Contacted', value: '18'),
          ],
        ),
      ),
      SizedBox(
        width: 800,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width < 800 ? 36.0 : 0.0,
              vertical: 32),
          child: const HeadingTextWidget(),
        ),
      ),
      SizedBox(
        height: 200,
        width: 800,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                DetailCardWidget(
                    leading: Icon(
                      Icons.school,
                      color: Color(0xFF8DCEC5),
                    ),
                    color: Color(0xFF99D5F3),
                    title: "Education",
                    stepDetail: "02 Steps Left"),
                DetailCardWidget(
                    leading: Icon(Icons.school, color: Color(0xFFFFCE81)),
                    color: Color(0xFFF7BE7D),
                    title: "Professional",
                    stepDetail: "02 Steps Left"),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
