import 'package:flutter/material.dart';
import 'package:flutter_component_ui/data/widget_category.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widgetCategoryData.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        widgetCategoryData[index]['categoryScreen'],
                  ),
                );
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 73, 173, 231)),
                child: Center(
                  child: Text(
                    widgetCategoryData[index]['categoryName'] as String,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
