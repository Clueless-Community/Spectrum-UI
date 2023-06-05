import 'package:flutter/material.dart';

import 'package:flutter_component_ui/ui_components/avatars/all_avatars/image_avatar/avatar1.dart';
import 'package:flutter_component_ui/ui_components/avatars/all_avatars/text_avatars/avatar2.dart';
import 'package:flutter_component_ui/ui_components/avatars/all_avatars/icon_avator/avatar3.dart';
import 'package:provider/provider.dart';

import '../../../provider/favorite_provider.dart';
import '../../../theme/theme.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  bool isFavorite2 = false;
  bool isFavorite1 = false;
  bool isFavorite = false;

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

  List<Color?> textAvatarsColor = [null];
  List<int> textAvatarsIndex = [34];

  final List<Widget> imageAvatars = [
    const Avatar1(size: 100, imagePath: 'assets/bored.png'),
  ];
  List<Color?> imageAvatarsColor = [null];
  List<int> imageAvatarsIndex = [35];

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

  List<Color?> iconAvatarsColor = [null];
  List<int> iconAvatarsIndex = [36];

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
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: textAvatars[index],
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
                                child: Icon(
                                  isFavorite
                                      ? Icons.star
                                      : Icons.star_border_outlined,
                                  color: Colors.amber,
                                ),
                                onTap: () {
                                  favProviderModel.add(textAvatarsIndex[index]);
                                  setState(() {
                                    isFavorite = !isFavorite;
                                  });
                                },
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
                  child: Text("Image Avatars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor))),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  imageAvatars.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: imageAvatars[index],
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
                                child: Icon(
                                  isFavorite1
                                      ? Icons.star
                                      : Icons.star_border_outlined,
                                  color: Colors.amber,
                                ),
                                onTap: () {
                                  favProviderModel
                                      .add(imageAvatarsIndex[index]);
                                  setState(() {
                                    isFavorite1 = !isFavorite1;
                                  });
                                },
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
                  child: Text("Icon Avatars",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor))),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                  iconAvatars.length,
                  (index) => Consumer<FavoritesProvider>(
                    builder: (context, favProviderModel, child) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: iconAvatars[index],
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
                                child: Icon(
                                  isFavorite2
                                      ? Icons.star
                                      : Icons.star_border_outlined,
                                  color: Colors.amber,
                                ),
                                onTap: () {
                                  favProviderModel.add(iconAvatarsIndex[index]);
                                  setState(() {
                                    isFavorite2 = !isFavorite2;
                                  });
                                },
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
    ));
  }
}
