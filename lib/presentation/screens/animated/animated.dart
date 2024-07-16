import 'dart:math' show Random;
import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/screens.dart';

//El StatefulWidget puede mantener un estado
//Y son muy utiles si no se quiere usar un manejador de estados
const List<Curve> animation = [
  Curves.easeInExpo,
  Curves.elasticInOut,
  Curves.elasticOut,
  Curves.bounceInOut,
  Curves.easeInBack,
  Curves.easeOutCubic,
  Curves.decelerate,
  Curves.easeInCirc,
  Curves.easeInToLinear,
  Curves.easeInOutCubicEmphasized,
  Curves.linear,
  Curves.decelerate,
  Curves.easeInQuad,
  Curves.bounceOut,
];

class Animated extends StatefulWidget {
  static const name = 'animated';

  const Animated({super.key});

  @override
  State<Animated> createState() => _AnimatedState();
}

class _AnimatedState extends State<Animated> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadios = 10.0;
  Curve animate = Curves.easeIn;

  void changeShape() {
    final ramdom = Random();

    width = ramdom.nextInt(500) + 120;
    height = ramdom.nextInt(500) + 120;
    borderRadios = ramdom.nextDouble() * 100;
    color = Color.fromRGBO(
        ramdom.nextInt(255), ramdom.nextInt(255), ramdom.nextInt(255), 1);
    animate = animation[ramdom.nextInt(12)];

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: animate,
          width: width <= 0 ? 0 : width,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
              color: color,
              borderRadius:
                  BorderRadius.circular(borderRadios <= 0 ? 0 : borderRadios)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
