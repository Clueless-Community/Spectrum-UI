import 'package:meta/meta.dart';

class CheckBoxModel {
  String title;
  bool value;

  CheckBoxModel({
    required this.title,
    this.value = false,
  });
}
