import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4(
      {super.key,
      required this.iconColor,
      required this.textColor,
      required this.containerColor});

  final Color iconColor;
  final Color textColor;
  final Color containerColor;

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int _small = 1;
  int _large = 1;
  int _outOf = 8;

  void increaseSmall(){
    if(_small<23) {
      _small = _small + 1;
    }
    setState(() {});
  }

  void decreaseSmall(){
    if(_small>1) {
      _small = _small - 1;
    }
    setState(() {});
  }

  void increaseLarge(){
    if(_large < 200){
      _large = _large + 1;
      _outOf = (_large ~/ 8 +  1) * 8 ;
    }
    setState(() {});
  }

  void decreaseLarge(){
    if(_large > 1){
      _large = _large - 1;
      _outOf = (_large ~/ 8 + 1) * 8;
    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.black,
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
                      onTap: () => decreaseSmall(),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: widget.iconColor,
                        size: 20
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
                            text: '  $_small',
                            style: TextStyle(color: widget.textColor),
                            children: const <TextSpan>[
                              TextSpan(text: '/23  '  , style: TextStyle(color: Colors.blueGrey))
                            ]
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
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => increaseSmall(),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: widget.iconColor,
                        size: 20,
                      ),
                    ),
                  ),
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
                              text: '  $_large-$_outOf',
                              style: TextStyle(color: widget.textColor),
                              children: const <TextSpan>[
                                TextSpan(text: ' of 200  '  , style: TextStyle(color: Colors.blueGrey))
                              ]
                          ),
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
                      onTap: () => decreaseLarge(),
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
                      onTap: () => increaseLarge(),
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
