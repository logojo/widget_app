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
  final bool darkMode;

  AppTheme({this.seletedColor = 0, this.darkMode = false})
      : assert(seletedColor >= 0, 'Selected color must be greater than 0 '),
        assert(seletedColor < colors.length,
            'Selected color must be less or equal then ${colors.length - 1}');

  ThemeData getTheme() => ThemeData(
      brightness: darkMode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colors[seletedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: false,
      ));

//copyWith crea una instancia de AppTheme
//para poder sobre escribir los valores
//ya que en AppTheme sus valores son final es decir no se pueden modificar
//Pero copuWith recibe esos mismo valores pero obcionales
  AppTheme copyWith({int? seletedColor, bool? darkMode}) => AppTheme(
        //crea la instancias de AppTheme y en caso de no recibir lo nuevos valores
        //usa los que tiene por defecto
        seletedColor: seletedColor ?? this.seletedColor,
        darkMode: darkMode ?? this.darkMode,
      );
}
