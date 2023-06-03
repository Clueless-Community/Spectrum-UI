import 'package:hive/hive.dart';

class HiveDatabase {
  final _myDatabase = Hive.box("favorites_database");
  void saveData(List<int> favs) {
    _myDatabase.put("Favs", favs);
  }

  List<int> readData() {
    return _myDatabase.get("Favs") ?? [];
  }
}
