import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  List choice = ["google", "facebook", "twitter", "amazon"];
  int choiceIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      child: ListView.builder(
        itemCount: choice.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: ChoiceChip(
              label: Text(
                choice[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              avatar: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              selected: choiceIndex == index,
              selectedColor: Colors.blue[900],
              onSelected: (value) {
                setState(() {
                  choiceIndex = value ? index : 0;
                });
              },
              backgroundColor: Colors.blueAccent,
            ),
          );
        },
      ),
    );
  }
}
