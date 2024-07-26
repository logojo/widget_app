import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

// Couter extiende de ConsumerWidget
//ConsumerWidget  es sun tipo de widget proveido por Riverpod
//para poder tener acceso al provider y cambios de estado
class Counter extends ConsumerWidget {
  static const name = 'counter';
  const Counter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //obteniendo el valor del provider y se esta pendiente de los cambios
    final int counter = ref.watch(counterProvider);
    final bool modeDark = ref.watch(darkModeProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Riverpod'),
          actions: [
            IconButton(
                onPressed: () {
                  ref.read(darkModeProvider.notifier).update((state) => !state);
                },
                icon: Icon(modeDark
                    ? Icons.dark_mode_outlined
                    : Icons.light_mode_outlined))
          ],
        ),
        body: Center(
          child: Text(
            'Valor: $counter',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            //leyendo el provider y cambiando el estado de su valor
            ref.read(counterProvider.notifier).state++;

            //otra forma
            /*  
              * ref.read(counterProvider.notifier).update((state) => state + 1);
            */
          },
        ));
  }
}
