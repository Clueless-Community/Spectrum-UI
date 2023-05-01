import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';

import 'screens/main_page.dart';

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
      theme: MyTheme.lightTheme(context),
      home: const MainPage(),
    );
  }
}
