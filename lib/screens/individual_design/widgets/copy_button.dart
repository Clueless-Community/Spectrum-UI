import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyButton extends StatelessWidget {
  final String text;
  const CopyButton({required this.text, Key? key}) : super(key: key);

  void _saveToClipboard() {
    final data = ClipboardData(text: text);
    Clipboard.setData(data);
    // print('Save $text to clipboard');
  }

  @override
  Widget build(BuildContext context) {
    return AnimateIcons(
      controller: AnimateIconController(),
      size: 24.0,
      startIcon: Icons.copy,
      endIcon: Icons.check,
      // add this tooltip for the start icon
      startTooltip: 'Copy',
      // add this tooltip for the end icon
      endTooltip: 'Copied',
      onStartIconPress: () {
        _saveToClipboard();
        return true;
      },
      onEndIconPress: () {
        return true;
      },
      duration: const Duration(milliseconds: 600),
      clockwise: true,
    );
  }
}
