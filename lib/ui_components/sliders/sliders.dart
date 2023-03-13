import 'package:flutter/material.dart';
import 'package:flutter_component_ui/ui_components/sliders/all_sliders/slider1.dart';
import 'all_sliders/slider2.dart';
import 'all_sliders/slider3.dart';
import 'all_sliders/slider4.dart';
import 'all_sliders/slider5.dart';
import 'all_sliders/slider6.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final List<Widget> sliders = [
    const Slider1(),
    const Slider2(),
    const Slider3(),
    const Slider4(),
    const Slider5(),
    const Slider6(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: sliders[index],
          );
        },
        itemCount: sliders.length,
      ),
    );
  }
}
