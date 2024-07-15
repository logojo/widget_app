import 'package:flutter/material.dart';

class UiControls extends StatelessWidget {
  static const name = 'UiControls';

  const UiControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('UiControls Screen'),
    ));
  }
}
