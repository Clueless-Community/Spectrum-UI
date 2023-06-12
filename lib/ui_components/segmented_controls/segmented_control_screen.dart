import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/favorite_provider.dart';
import '../../theme/theme.dart';
import 'all_segmented_controls/segmented_controls.dart';

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
    List<Widget> segmentedLightControl = [
      Center(
        child: RectangularSelections(
          values: const ['Text', 'Text', 'Text'],
          onSelected: (index) {},
        ),
      ),
      Center(
        child: RadioChips(
          values: const ['Text', 'Text', 'Text'],
          onSelected: (index) {},
        ),
      ),
    ];
    List<Widget> segmentedControlDark = [
      Center(
        child: SegmentedControlWidget(
          choices: choices1,
        ),
      ),
      Center(
        child: SegmentedControlWidget(
          choices: choices,
        ),
      ),
    ];
    List<int> segmentedControlLightFavIndex = [61, 62];
    List<int> segmentedControlDarkFavIndex = [63, 64];
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Segment Control Light Mode",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.lightBluishColor),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            direction: Axis.horizontal,
            children: List.generate(
              segmentedLightControl.length,
              (index) => Consumer<FavoritesProvider>(
                builder: (context, favProviderModel, child) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: segmentedLightControl[index],
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
                                  .add(segmentedControlLightFavIndex[index]);
                              setState(() {});
                            },
                            child: Icon(
                              Icons.star_border_outlined,
                              color: (favProviderModel.starred(
                                      segmentedControlLightFavIndex[index]))
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
            child: Text(
              "Segment Control Dark Mode",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: MyTheme.lightBluishColor),
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            direction: Axis.horizontal,
            children: List.generate(
              segmentedControlDark.length,
              (index) => Consumer<FavoritesProvider>(
                builder: (context, favProviderModel, child) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: segmentedControlDark[index],
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
                                  .add(segmentedControlDarkFavIndex[index]);
                              setState(() {});
                            },
                            child: Icon(
                              Icons.star_border_outlined,
                              color: (favProviderModel.starred(
                                      segmentedControlDarkFavIndex[index]))
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
    );
  }
}
