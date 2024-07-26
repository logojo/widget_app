import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

//StateProvider se utiliza para mantener una pieaza de estado
final darkModeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

//Listado de colores inmutable
// Provider se utiliza para valores inmutables
final colorsProvider = Provider((ref) => colors);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<AppTheme> {
  //Creando una instancia de Apptheme
  //el state = una nueva instacia de AppTheme
  ThemeNotifier() : super(AppTheme());

  void toggleDarkMode() {
    state = state.copyWith(darkMode: !state.darkMode);
  }

  void changeColorTheme(int color) {
    state = state.copyWith(seletedColor: color);
  }
}
