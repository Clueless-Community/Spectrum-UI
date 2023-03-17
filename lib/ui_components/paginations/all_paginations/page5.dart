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
  int _page = 1;
  bool _three = false, _two = false, _one = false;

  void increasePage() {
    _page = _page + 1;
    if (_page == 3) {
      _three = true;
      _two = false;
      _one = false;
    } else if (_page == 2) {
      _two = true;
      _three = false;
      _one = false;
    } else if (_page == 1) {
      _one = true;
      _two = false;
      _three = false;
    } else {
      _three = false;
    }
    setState(() {});
  }

  void decreasePage() {
    if (_page > 1) {
      _page = _page - 1;
    }
    if (_page == 3) {
      _three = true;
      _two = false;
      _one = false;
    } else if (_page == 2) {
      _two = true;
      _three = false;
      _one = false;
    } else if (_page == 1) {
      _one = true;
      _two = false;
      _three = false;
    } else {
      _three = false;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
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
              onPressed: () => decreasePage(),
              icon: const Icon(Icons.arrow_back_ios),
              color: widget.iconColor,
            ),
            InkWell(
              onTap: () => decreasePage(),
              child: Text('Prev', style: TextStyle(color: widget.textColor)),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: _one
                  ? CircleAvatar(
                backgroundColor: widget.hightlightColor,
                child: const Text(
                  '1',
                  style: TextStyle(color: Colors.white),
                ),
              )
                  : Text(
                '1',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: _two
                  ? CircleAvatar(
                backgroundColor: widget.hightlightColor,
                child: const Text(
                  '2',
                  style: TextStyle(color: Colors.white),
                ),
              )
                  : Text(
                '2',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: _three
                  ? CircleAvatar(
                backgroundColor: widget.hightlightColor,
                child: const Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
              )
                  : Text(
                '...',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {},
              child: (_three || _one || _two)
                  ? const Text('')
                  : CircleAvatar(
                backgroundColor: widget.hightlightColor,
                child: Text(
                  '$_page',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () => increasePage(),
              child: Text(
                'Next',
                style: TextStyle(color: widget.textColor),
              ),
            ),
            IconButton(
              onPressed: () => increasePage(),
              icon: const Icon(Icons.arrow_forward_ios),
              color: widget.iconColor,
            ),
          ],
        ),
      )
    ]);
  }
}
