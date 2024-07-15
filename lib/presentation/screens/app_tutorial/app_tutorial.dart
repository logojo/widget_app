import 'package:flutter/material.dart';

class AppTutorial extends StatelessWidget {
  static const name = 'tutorial';

  const AppTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('tutorial Screen'),
    ));
  }
}
