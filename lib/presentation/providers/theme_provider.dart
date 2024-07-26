import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/config/theme/app_theme.dart';

final darkModeProvider = StateProvider((ref) => false);

final selectedColorProvider = StateProvider((ref) => 0);

//Listado de colores inmutable
final colorsProvider = Provider((ref) => colors);
