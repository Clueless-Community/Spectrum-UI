import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter UI Components'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Amazing UI Components for you to choose from. 📜',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ComponentCard(
                    title: 'Splash Screen',
                    imagePath: 'assets/Screenshots/splash_screen.jpg',
                  ),
                  ComponentCard(
                    title: 'Avatar',
                    imagePath: 'assets/Screenshots/avatar.jpg',
                  ),
                  ComponentCard(
                    title: 'Buttons',
                    imagePath: 'assets/Screenshots/buttons.jpg',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ComponentCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const ComponentCard({
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 400,
            height: 700,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
