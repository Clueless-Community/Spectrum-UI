import 'package:flutter/material.dart';

class StatusCardWidget extends StatelessWidget {
  const StatusCardWidget({
    super.key,
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            name,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 16,
                ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,
                ),
          )
        ],
      ),
    );
  }
}
