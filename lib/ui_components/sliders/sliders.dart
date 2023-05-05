import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';

import 'all_sliders/single_pointer_slider/slider1.dart';
import 'all_sliders/single_pointer_slider/slider2.dart';
import 'all_sliders/single_pointer_slider/slider3.dart';
import 'all_sliders/dual_pointer_slider/slider4.dart';

import 'all_sliders/single_pointer_slider/slider5.dart';
import 'all_sliders/single_pointer_slider/slider6.dart';

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

  final List<Widget> singlePointSlider = [
    const Slider1(
      activeColor: Colors.cyan,
      inactiveColor: Colors.black,
      maxRange: 100.0,
    ),
    const Slider3(
      activeColor: Colors.red,
      inactiveColor: Colors.white,
      maxRange: 100,
    ),
    const Slider5(
      activeColor: Colors.pink,
      inactiveColor: Colors.amberAccent,
      maxRange: 100,
    ),
    const Slider6(
      activeColor: Colors.lightBlueAccent,
      inactiveColor: Color(0xFF005F99),
      maxRange: 60,
    ),
    Slider2(
      activeColor: const Color(0xFF005F99),
      inactiveColor: Colors.purple.shade600,
      maxRange: 100,
    ),
  ];

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
              children: List.generate(singlePointSlider.length,
                  (index) => singlePointSlider[index]),
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
                  (index) => Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: dualPointSlider[index],
                      )),
            ),
          ]),
        ),
      ),
    ));
  }
}
