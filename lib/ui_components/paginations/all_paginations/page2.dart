import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({
    super.key,
    required this.iconColor,
    required this.textColor,
  });
  final Color iconColor;
  final Color textColor;

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _page = 1;

  void increasePage() {
    _page = _page + 1;
    setState(() {});
  }

  void decreasePage() {
    if (_page > 1) {
      _page = _page - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Pagination Arrows',
            style: TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '$_page',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              InkWell(
                onTap: () => increasePage(),
                child: Text('Next', style: TextStyle(color: widget.textColor)),
              ),
              IconButton(
                onPressed: () => increasePage(),
                icon: const Icon(Icons.arrow_forward_ios),
                color: widget.iconColor,
              ),
            ],
          ),
        )
      ],
    );
  }
}
