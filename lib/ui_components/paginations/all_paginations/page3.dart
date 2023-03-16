import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3(
      {super.key,
      required this.iconColor,
      required this.textColor,
      required this.containerColor});

  final Color iconColor;
  final Color textColor;
  final Color containerColor;

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Pagination Table',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: widget.iconColor,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                    ),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: '  04',
                            style: TextStyle(color: widget.textColor),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: '/23  ',
                                  style: TextStyle(color: Colors.grey))
                            ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: widget.iconColor,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: '  1-8',
                              style: TextStyle(color: widget.textColor),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: ' of 200  ',
                                    style: TextStyle(color: Colors.grey))
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: widget.iconColor,
                        size: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: widget.containerColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: widget.iconColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
