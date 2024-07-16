import 'package:flutter/material.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter widget',
      //extrallendo rutas desde un archivo independiente
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(seletedColor: 5).getTheme(),
    );
  }
}
