import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';

class Filter1 extends StatefulWidget {
  const Filter1({Key? key}) : super(key: key);

  @override
  State<Filter1> createState() => _Filter1State();
}

class _Filter1State extends State<Filter1> {
  bool showvalue1 = false;
  bool showvalue2 = false;
  bool showvalue3 = false;
  bool showvalue4 = false;
  bool showvalue5 = false;
  bool showvalue6 = false;
  bool showvalue7 = false;
  bool showvalue8 = false;
  bool showvalue9 = false;
  bool showvalue10 = false;
  bool showvalue11 = false;
  bool showvalue12 = false;
  bool showvalue13 = false;

  var selectedRange = RangeValues(0.1, 0.9);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 2, 5),
                  child: Icon(Icons.close),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Filter",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 230,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 5, 2, 5),
                  child: Text(
                    "Clear All",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 4, 2),
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Color(0xffF1F5F9)),
              child: Container(
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            hintText: "Search"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Filter by Type",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Text(
                      "Clear all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue1,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue1 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue2,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue2 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue3,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue3 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue4,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue4 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Filter by Rating",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Text(
                      "Clear all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 2,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 30,
                    initialRating: 1,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Range",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.currency_rupee),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Min",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.currency_rupee),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Max",
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                RangeSlider(
                  activeColor: Colors.blue,
                  inactiveColor: Colors.grey,
                  values: selectedRange,
                  onChanged: (RangeValues newRange) {
                    setState(() {
                      selectedRange = newRange;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 2, 0, 5),
                      child: Text(
                        "${(selectedRange.start * 40).toStringAsFixed(1)} k",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(25, 2, 25, 0),
                      child: Text(
                        "${(selectedRange.end * 166.7).toStringAsFixed(1)} k",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Container(
              child: Row(
                children: [
                  Text(
                    "Filter by Type",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    child: Text(
                      "Clear all",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue5,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue5 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue6,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue6 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue7,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue7 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.showvalue8,
                      onChanged: (bool? value) {
                        setState(() {
                          this.showvalue8 = value!;
                        });
                      },
                    ),
                    Text("Type"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: this.showvalue9,
                        onChanged: (bool? value) {
                          setState(() {
                            this.showvalue9 = value!;
                          });
                        },
                      ),
                      Text("Type"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.showvalue10,
                        onChanged: (bool? value) {
                          setState(() {
                            this.showvalue10 = value!;
                          });
                        },
                      ),
                      Text("Type"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.showvalue11,
                        onChanged: (bool? value) {
                          setState(() {
                            this.showvalue11 = value!;
                          });
                        },
                      ),
                      Text("Type"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: this.showvalue12,
                        onChanged: (bool? value) {
                          setState(() {
                            this.showvalue12 = value!;
                          });
                        },
                      ),
                      Text("Type"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
