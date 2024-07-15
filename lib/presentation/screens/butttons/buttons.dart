import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Buttons extends StatelessWidget {
  static const name = 'buttons';
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          //regresando a la pantalla anterior
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      //width: double.infinity toma todo el ancho que tiene el padre
      //Pero tenemos que tener cuidado de que el padre tenga un ancho definino si no tendremos un error
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        //El wrap es un widget similar al Column() pero con la configuración de ajustar el contenido
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                //all mandar null en el onPress este boton automaticamente se desabilita
                onPressed: null,
                child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('ElevadedIcon'),
            ),
            FilledButton(onPressed: () {}, child: const Text('fill')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.accessibility_new_rounded),
                label: const Text('fillIcon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outline')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.terminal),
                label: const Text('OutlineIcon')),
            TextButton(onPressed: () {}, child: const Text('Text')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.face_2_outlined),
                label: const Text('TextIcon')),
            const CustomButtom(),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_outlined)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: const WidgetStatePropertyAll(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    //ClipRRect sirve para hacer border redondeados
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: colors.primary,
        //Esto le da un efecto al dar clikc sobre el widget
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Butón personalizado',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
