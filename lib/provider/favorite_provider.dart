import 'package:flutter/material.dart';

class FavoritesProvider extends ChangeNotifier {
  List<Widget> favs = [];
  void add(Widget item) {
    favs.add(item);
    notifyListeners();
  }

  void remove(Widget item) {
    favs.remove(item);
    notifyListeners();
  }
}
