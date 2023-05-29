import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'segmented_controls.dart';

class SegmentedControlScreen extends StatefulWidget {
  const SegmentedControlScreen({super.key});

  @override
  State<SegmentedControlScreen> createState() => _SegmentedControlScreenState();
}

class _SegmentedControlScreenState extends State<SegmentedControlScreen> {
  @override
  Widget build(BuildContext context) {
    Color? color;
    Map<int, Widget> choices = {
      0: buildSegment("week", color),
      1: buildSegment("Month", color),
      2: buildSegment("Year", color),
    };
    Map<int, Widget> choices1 = {
      0: buildSegment("Text", color),
      1: buildSegment("Text", color),
      2: buildSegment("Text", color),
    };
    List<Color?> segmentedControlFavColor = [null, null, null, null];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Segment Control Light Mode",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.lightBluishColor)),
                  ),
                ),
                Center(
                  child: RectangularSelections(
                    values: const ['Text', 'Text', 'Text'],
                    onSelected: (index) {},
                  ),
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
                            Center(
                              child: RectangularSelections(
                                values: const ['Text', 'Text', 'Text'],
                                onSelected: (index) {},
                              ),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.star_border_outlined,
                          color: segmentedControlFavColor[3],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [

                Center(
                  child: RadioChips(
                    values: const ['Text', 'Text', 'Text'],
                    onSelected: (index) {},
                  ),
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
                            Center(
                              child: RadioChips(
                                values: const ['Text', 'Text', 'Text'],
                                onSelected: (index) {},
                              ),
                            ),
                          );
                          setState(() {
                            segmentedControlFavColor[2] = Colors.amber;
                          });
                        },
                        child: Icon(
                          Icons.star_border_outlined,
                          color: segmentedControlFavColor[2],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Segment Control Dark Mode",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.lightBluishColor)),
                  ),
                ),
                Center(
                  child: SegmentedControlWidget(
                    choices: choices1,
                  ),
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
                            Center(
                              child: SegmentedControlWidget(
                                choices: choices1,
                              ),
                            ),
                          );
                          setState(() {
                            segmentedControlFavColor[0] = Colors.amber;
                          });
                        },
                        child: Icon(
                          Icons.star_border_outlined,
                          color: segmentedControlFavColor[0],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [
                Center(
                  child: SegmentedControlWidget(
                    choices: choices,
                  ),
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
                            Center(
                              child: SegmentedControlWidget(
                                choices: choices,
                              ),
                            ),
                          );
                          setState(() {
                            segmentedControlFavColor[1] = Colors.amber;
                          });
                        },
                        child: Icon(
                          Icons.star_border_outlined,
                          color: segmentedControlFavColor[1],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
