import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  static const name = 'buttons';
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
