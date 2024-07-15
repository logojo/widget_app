import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/screens/home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 2).getTheme(),
      home: const Scaffold(
        body: Home(),
      ),
    );
  }
}
