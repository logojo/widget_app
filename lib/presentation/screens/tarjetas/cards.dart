import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  static const name = 'cards';
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder(),
    );
  }
}
