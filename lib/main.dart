import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

void main() {
  //con ProviderScope importo riverpod paquete para manejo de estados al inicio de la aplicacion
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool darkMode = ref.watch(darkModeProvider);
    final int seletedColor = ref.watch(selectedColorProvider);

    return MaterialApp.router(
      title: 'Flutter widget',
      //extrallendo rutas desde un archivo independiente
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme:
          AppTheme(seletedColor: seletedColor, darkMode: darkMode).getTheme(),
    );
  }
}
