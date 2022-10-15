import 'package:flutter/material.dart';

// Use this ScrollabeDialogBox as Normal Alert dialog box, only you have to pass List and title in this widget

class ScrollableDialogBox extends StatefulWidget {
  const ScrollableDialogBox(
      {super.key, required this.title, required this.list});
  final String title; // title that will appear in Scrollable Dialog Box
  final List list; // List which you want to 

  @override
  State<ScrollableDialogBox> createState() => _ScrollableDialogBoxState();
}

class _ScrollableDialogBoxState extends State<ScrollableDialogBox> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.40,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          itemCount: widget.list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  for (int i = 0; i < widget.list.length; i++) {
                    if (widget.list[i].isSelected == true) {
                      widget.list[i].isSelected = false;
                    }
                  }
                  widget.list[index].isSelected = true;
                });
              },
              child: Container(
                color:
                    widget.list[index].isSelected ? Colors.blue : Colors.white,
                child: ListTile(
                  title: Text(widget.list[index].data.toString()),
                ),
              ),
            );
          }),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            setState(() {
              for (int i = 0; i < widget.list.length; i++) {
                if (widget.list[i].isSelected == true) {
                  widget.list[i].isSelected = false;
                }
              }
            });
            Navigator.pop(context);
          },
          child: const Text(
            'Cancel',
            style: TextStyle(fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Ok',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      titlePadding: const EdgeInsets.fromLTRB(25, 15, 0, 15),
      contentPadding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      buttonPadding: const EdgeInsets.all(15),
      actionsPadding: const EdgeInsets.all(8),
    );
  }
}
