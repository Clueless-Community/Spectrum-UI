import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final dynamic count;
  const Heading({super.key, required this.title, this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(225, 14, 20, 69)),
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(225, 14, 20, 69),
                    borderRadius: BorderRadius.circular(6)),
                width: 40,
                height: 25,
                child: Text(
                  count,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
