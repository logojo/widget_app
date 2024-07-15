import 'package:flutter/material.dart';

class Animated extends StatelessWidget {
  static const name = 'animated';

  const Animated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Animated Screen'),
    ));
  }
}
