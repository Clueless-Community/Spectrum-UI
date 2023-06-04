import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_component_ui/provider/favorite_provider.dart';
import 'package:flutter_component_ui/screens/splash_screen.dart';
import 'package:flutter_component_ui/theme/theme.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';

import 'screens/main_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("favorites_database");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FavoritesProvider(),
        )
      ],
      child: MaterialApp(
          title: 'Spectrum UI',
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.system,
          darkTheme: MyTheme.darkTheme(context),
          theme: MyTheme.lightTheme(context),
          home: const MyHome()),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context) {
        return const MainPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
