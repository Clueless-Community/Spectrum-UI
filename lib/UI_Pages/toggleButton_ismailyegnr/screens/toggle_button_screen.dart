import 'package:flutter/material.dart';

import '../widgets/toggle_button_widget.dart';

class ToggleButtonScreen extends StatelessWidget {
  const ToggleButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Button Screen"),
      ),
      body: const Center(
        child: CustomToggle(),
      ),
    );
  }
}
