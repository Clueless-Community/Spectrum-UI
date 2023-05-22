import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/favorite_provider.dart';
import 'segmented_controls.dart';

class SegmentedControlScreen extends StatelessWidget {
  const SegmentedControlScreen({super.key});

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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<FavoritesProvider>(
            builder: (context, favProviderModel, child) => Column(
              children: [
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
                        },
                        child: const Icon(
                          Icons.star_border_outlined,
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
                        },
                        child: const Icon(
                          Icons.star_border_outlined,
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
                        },
                        child: const Icon(
                          Icons.star_border_outlined,
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
                        child: const Icon(
                          Icons.star_border_outlined,
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
