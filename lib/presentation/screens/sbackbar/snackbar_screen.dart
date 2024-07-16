import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'Snackbar';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    //oculta los SnackBar abiertos antes de abrir otro
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  //BuildContext contiene la información de mi aplicacion
  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      //Con esto se evita que el dialogo se cierre al pulsar fuera de este y se obliga a seleccionar alguna opción
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estas Seguro?'),
        content: const Text(
            'Est exercitation eiusmod sunt laborum. Cupidatat proident anim officia elit minim ipsum consectetur officia dolor. Aliquip id cillum esse incididunt aute nostrud enim pariatur id adipisicing esse tempor duis reprehenderit. Minim exercitation ea sunt Lorem adipisicing. Tempor aliqua dolor deserunt Lorem magna id adipisicing enim laboris consectetur. Sint aliquip fugiat cupidatat occaecat culpa est culpa quis veniam nostrud. Elit exercitation nulla ullamco sint velit.'),
        actions: [
          TextButton(
              //Se puede acceder al context.pop() para cerrar el dialog gracias al paquete instalado go_router
              //Si no se tuviera go_router se tendria que cerrar con Navigator.of(context).pop()
              onPressed: () => context.pop(),
              child: const Text('Cancelar')),
          FilledButton(onPressed: () {}, child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar and Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  //abriendo dialog
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Amet minim enim duis velit incididunt nulla. Mollit ut laboris reprehenderit et fugiat in amet irure enim amet anim. Dolore excepteur nisi eiusmod aliquip velit officia Lorem id incididunt deserunt officia laborum laborum. Occaecat amet aliqua tempor esse tempor adipisicing duis culpa id velit eu consectetur. Labore non excepteur aute nulla elit ipsum. Ullamco culpa consequat consectetur id. Eiusmod qui esse nisi excepteur culpa cillum.')
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
