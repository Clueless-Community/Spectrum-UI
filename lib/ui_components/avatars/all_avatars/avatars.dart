import 'package:flutter/material.dart';

import 'package:flutter_component_ui/ui_components/avatars/all_avatars/image_avatar/avatar1.dart';
import 'package:flutter_component_ui/ui_components/avatars/all_avatars/text_avatars/avatar2.dart';
import 'package:flutter_component_ui/ui_components/avatars/all_avatars/icon_avator/avatar3.dart';

import '../../../theme/theme.dart';

class AvatarScreen extends StatelessWidget {
  AvatarScreen({super.key});

  final List<Widget> textAvatars = [
    const Avatar2(
      size: 100,
      text: Text(
        'AZ',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      backgroundColor: Colors.black,
    ),
  ];
  final List<Widget> imageAvatars = [
    const Avatar1(size: 100, imagePath: 'assets/bored.png'),
  ];
  final List<Widget> iconAvatars = [
    const Avatar3(
      size: 100,
      icon: Icon(
        Icons.person_2_outlined,
        color: Colors.white,
        size: 50,
      ),
      backgroundColor: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Text Avatars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor))),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    textAvatars.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: textAvatars[index],
                        )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Image Avatars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor))),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    imageAvatars.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: imageAvatars[index],
                        )),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Icon Avatars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor))),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    iconAvatars.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: iconAvatars[index],
                        )),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
