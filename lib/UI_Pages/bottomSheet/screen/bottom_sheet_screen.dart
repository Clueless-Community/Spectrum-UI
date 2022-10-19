import 'package:flutter/material.dart';
import 'package:flutter_ui/UI_Pages/bottomSheet/Widget/bottom_sheet.dart';
import 'package:flutter_ui/UI_Pages/bottomSheet/Widget/demo_widgets.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  final theme = ThemeData(backgroundColor: const Color.fromARGB(225, 14, 20, 69));
  final List<Map<String, Object>> widgetDataList = [];
  void bottomSheet(BuildContext ctx) {
    showBottomSheet(
        context: ctx,
        builder: (_) {
          return const BottomSheetForm();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom screen Form"),
        backgroundColor: const Color.fromARGB(225, 14, 20, 69),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const DemoWidget(),
                  ElevatedButton(
                    onPressed: (() => bottomSheet(context)),
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 39, 35, 80),
                      ),
                    ),
                    child: const Text(
                      "Show Bottom Sheet",
                      style:
                          TextStyle(color: Color.fromARGB(255, 235, 234, 234)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
