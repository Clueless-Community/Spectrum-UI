import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({
    super.key,
  });

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                onPressed: () {},
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
              ),
              InkWell(
                onTap: () {},
                child:
                    const Text('Prev', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                onTap: () {},
                child:
                    const Text('Next', style: TextStyle(color: Colors.black)),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
                color: Colors.black,
              ),
            ],
          ),
        )
      ],
    );
  }
}
