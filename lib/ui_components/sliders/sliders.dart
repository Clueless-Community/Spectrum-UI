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
    const Slider1(activeColor: Colors.cyan, inactiveColor: Colors.black, maxRange: 100.0,),
    Slider2(activeColor: const Color(0xFF005F99), inactiveColor: Colors.purple.shade600, maxRange: 100,),
    const Slider3(activeColor: Colors.red, inactiveColor: Colors.white, maxRange: 100,),
    const Slider4(activeColor: Colors.white, inactiveColor: Colors.black, maxRange: 100,),
    const Slider5(activeColor: Colors.pink, inactiveColor: Colors.amberAccent, maxRange: 100,),
    const Slider6(activeColor: Colors.lightBlueAccent, inactiveColor: Color(0xFF005F99), maxRange: 60,),
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
