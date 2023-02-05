import 'package:flutter/material.dart';
import 'package:flutter_component_ui/data/widget_category.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Component'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            widgetCategoryData[index]['categoryScreen']));
              },
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.pink),
                child:
                    Text(widgetCategoryData[index]['categoryName'] as String),
              ),
            ),
          );
        }),
        itemCount: widgetCategoryData.length,
      ),
    );
  }
}
