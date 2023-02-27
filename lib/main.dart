import 'package:flutter/material.dart';
import 'package:flutter_component_ui/screens/main_app_widgets/main_page.dart';
import 'package:flutter_component_ui/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.LightTheme(context),
      home: const MainPage(),
    );
  }
}
