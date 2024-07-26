import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';
import 'package:widget_app/presentation/screens/screens.dart';

class ThemeChanger extends ConsumerWidget {
  static const name = 'theme';
  const ThemeChanger({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //utilizando el StateProvider
    /*
    * final bool modeDark = ref.watch(darkModeProvider);*/

    //utilizando el StateNotifierProvider con las propiedades definidas
    final bool modeDark = ref.watch(themeNotifierProvider).darkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
              onPressed: () {
                //ref.read(darkModeProvider.notifier).update((state) => !state);

                //Cambiando el estado con el metodo definido en la clase ThemeNotifier del provider
                ref.read(themeNotifierProvider.notifier).toggleDarkMode();
              },
              icon: Icon(modeDark
                  ? Icons.dark_mode_outlined
                  : Icons.light_mode_outlined))
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorsProvider);
    //final int selected = ref.watch(selectedColorProvider);
    final int selected = ref.watch(themeNotifierProvider).seletedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final color = colors[index];
        return RadioListTile(
          title: Text(
            'Este color',
            style: TextStyle(color: color),
          ),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index,
          groupValue: selected,
          onChanged: (value) {
            //ref.read(selectedColorProvider.notifier).state = index;
            ref.read(themeNotifierProvider.notifier).changeColorTheme(index);
          },
        );
      },
    );
  }
}
