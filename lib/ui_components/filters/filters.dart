import 'package:flutter/material.dart';

import 'allfilters/filter1.dart';

class FilterScreen extends StatelessWidget {
  FilterScreen({super.key});

  final List<Widget> filters = [
    Filter1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: filters[index],
          );
        },
        itemCount: filters.length,
      ),
    );
  }
}
