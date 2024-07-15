import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/screens/butttons/buttons.dart';
import 'package:widget_app/presentation/screens/home/home.dart';
import 'package:widget_app/presentation/tarjetas/cards.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 0).getTheme(),
      home: const Scaffold(
        body: Home(),
      ),
      //Navegacion a diferentes pantallas
      routes: {
        '/buttons': (context) => const Buttons(),
        '/cards': (context) => const Cards()
      },
    );
  }
}
