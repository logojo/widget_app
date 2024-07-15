import 'package:flutter/material.dart';

class InfiniteScroll extends StatelessWidget {
  static const name = 'Infinite_Scroll';

  const InfiniteScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Infinite Scroll Screen'),
    ));
  }
}
