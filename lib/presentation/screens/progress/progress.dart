import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  static const name = 'Progress';

  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Progress Indicators'),
        ),
        body: const _ProgressView());
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(height: 30),
          Text(
            'Circular progress indicator',
          ),
          SizedBox(height: 20),
          CircularProgressIndicator(
            strokeWidth: 4,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 30),
          Text('Circular y Linear indicator controled'),
          SizedBox(height: 20),
          _ControllerdProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerdProgressIndicator extends StatelessWidget {
  const _ControllerdProgressIndicator();

  @override
  Widget build(BuildContext context) {
    //StreamBuilder es un widget que se construlle en tiempo de ejecución
    //Este esta asociado a un stream: que es un flujo de información
    return StreamBuilder(
        //Stream.periodic cada periodo de tiempo estara emitiendo valores
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
          //takeWhile le indica al Stream se ejecutara hasta que el value sea a menor 100
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          //Obteniendo el valor que emite el stream
          final progressValue = snapshot.data ?? 0;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(
                  value: progressValue,
                  strokeWidth: 4,
                  backgroundColor: Colors.black12,
                ),
                //En el SizeBox se usa el width en lugar del height por que nos encontramos en un Row
                const SizedBox(width: 20),
                //Expanded toma todo el espacio que el padre le esta dando
                Expanded(
                    //El linear LinearProgressIndicator necesita que se le indique el tamaño del espacio en el que sera contruido
                    //En esta caso se le esta indicando el tamaño con el Expanded
                    child: LinearProgressIndicator(
                  value: progressValue,
                ))
              ],
            ),
          );
        });
  }
}
