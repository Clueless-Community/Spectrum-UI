import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:provider/provider.dart';

import '../../provider/favorite_provider.dart';
import 'all_sliders/single_pointer_slider/slider1.dart';
import 'all_sliders/single_pointer_slider/slider2.dart';
import 'all_sliders/single_pointer_slider/slider3.dart';
import 'all_sliders/dual_pointer_slider/slider4.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final List<Widget> dualPointSlider = [
    const Slider4(
      activeColor: Colors.white,
      inactiveColor: Colors.black,
      maxRange: 100,
    ),
  ];
  List<int> dualPointSliderIndex = [46];

  final List<Widget> singlePointSlider = [
    const Slider1(
      activeColor: Colors.cyan,
      inactiveColor: Colors.black,
      maxRange: 100.0,
    ),
    Slider2(
      activeColor: const Color(0xFF005F99),
      inactiveColor: Colors.purple.shade600,
      maxRange: 100,
    ),
    const Slider3(
      activeColor: Colors.red,
      inactiveColor: Colors.white,
      maxRange: 100,
    ),
  ];
  List<int> singlePointSliderIndex = [47, 48, 49, 50, 51];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Single Point Slider",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.lightBluishColor),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                singlePointSlider.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      singlePointSlider[index],
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
                                    .add(singlePointSliderIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(singlePointSliderIndex[index]))
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
                child: Text("Dual Point Slider",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.lightBluishColor))),
            Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                dualPointSlider.length,
                (index) => Consumer<FavoritesProvider>(
                  builder: (context, favProviderModel, child) => Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: dualPointSlider[index],
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
                                    .add(dualPointSliderIndex[index]);
                                setState(() {});
                              },
                              child: Icon(
                                Icons.star_border_outlined,
                                color: (favProviderModel
                                        .starred(dualPointSliderIndex[index]))
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
          ]),
        ),
      ),
    ));
  }
}
