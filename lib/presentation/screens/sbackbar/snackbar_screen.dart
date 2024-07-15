import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'Snackbar';

  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text('Snackbar Screen'),
    ));
  }
}
