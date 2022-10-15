import 'package:flutter/material.dart';
import 'package:flutter_ui/dialog_box_sagardev2301/scrollable_dialog/model/dialog_model.dart';
import 'package:flutter_ui/dialog_box_sagardev2301/scrollable_dialog/widget/scrollable_dialog_box.dart';
import '../../widgets/heading.dart';
import '../../widgets/searchbar.dart';

class DialogScreen extends StatefulWidget {
  const DialogScreen({super.key});

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  late List list = [];

  void addData() {
    for (int i = 0; i < 15; i++) {
      list.add(ListItem<String>("List Item No - $i"));
    }
  }

  @override
  void initState() {
    super.initState();
    addData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Heading(
              title: "Dialog Boxes",
              count: "1",
            ),
            const SizedBox(
              height: 20,
            ),
            const SearchBar(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) =>
                        ScrollableDialogBox(title: "Dialog Box", list: list));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFEEEE),
                      borderRadius: BorderRadius.circular(15)),
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Scrollable Dialog Box",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color.fromARGB(225, 14, 20, 69)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
