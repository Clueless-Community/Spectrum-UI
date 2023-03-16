import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5(
      {super.key,
      required this.iconColor,
      required this.textColor,
      required this.containerColor,
      required this.hightlightColor});

  final Color iconColor;
  final Color textColor;
  final Color containerColor;
  final Color hightlightColor;

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 20,
      ),
      Container(
        height: 100,
        width: 400,
        decoration: BoxDecoration(
          color: widget.containerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
              color: widget.iconColor,
            ),
            InkWell(
              onTap: () {},
              child: Text('Prev', style: TextStyle(color: widget.textColor)),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text('1', style: TextStyle(color: widget.textColor)),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                '2',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: Text(
                '...',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: widget.hightlightColor,
                child: const Text(
                  '10',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Next',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
              color: widget.iconColor,
            ),
          ],
        ),
      )
    ]);
  }
}
