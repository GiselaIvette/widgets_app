import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.grey,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
  Colors.yellowAccent,
  Colors.lime,
  Colors.indigo
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = false})
      : assert(selectedColor >= 0, 'selected color must be greater then 0'),
        assert(selectedColor < colorList.length,
            'selected color must lees or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness:
          isDarkMode ? Brightness.dark : Brightness.light, //tema de la app
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));



//Este método se llama copyWith porque crea una nueva copia de la clase AppTheme, permitiendo cambiar solo algunos valores.
//Sirve para actualizar parcialmente una instancia sin modificar la original.
  AppTheme copyWith({int? selectedColor, bool? isDarkMode}) => AppTheme(
      selectedColor: selectedColor ?? this.selectedColor,
      isDarkMode: isDarkMode ?? this.isDarkMode); //cpia intancia de la clase
}
