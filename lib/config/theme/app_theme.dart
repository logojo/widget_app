import 'package:flutter/material.dart';

const colors = <Color>[
  Colors.blue,
  Colors.red,
  Colors.teal,
  Colors.green,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int seletedColor;

  AppTheme({this.seletedColor = 0})
      : assert(seletedColor >= 0, 'Selected color must be greater than 0 '),
        assert(seletedColor < colors.length,
            'Selected color must be less or equal then ${colors.length - 1}');

  ThemeData getTheme() => ThemeData(
        colorSchemeSeed: colors[seletedColor],
      );
}
