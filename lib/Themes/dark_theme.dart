import 'package:flutter/material.dart';

ColorScheme darkColorScheme = const ColorScheme.dark(
    primary: Colors.indigoAccent,
    primaryContainer: Color.fromRGBO(25, 25, 60, 100) );

AppBarTheme appBarThemeDark =  const AppBarTheme(
  backgroundColor: Colors.indigoAccent,
  foregroundColor: Colors.white,
);

TextTheme textThemeDark = const TextTheme(
  titleLarge: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
  bodySmall: TextStyle(color: Colors.yellowAccent, fontSize: 28, fontWeight: FontWeight.bold),
  bodyMedium: TextStyle(color: Colors.white),
  titleSmall: TextStyle(color: Colors.yellowAccent, fontSize: 15, fontWeight: FontWeight.bold)
);

OutlinedButtonThemeData outlinedButtonThemeDark = OutlinedButtonThemeData(
style:OutlinedButton.styleFrom(
    side:const BorderSide(
    color: Colors.yellowAccent),
    foregroundColor: Colors.yellowAccent)
);

ListTileThemeData listTileThemeDark = ListTileThemeData(
    tileColor: const Color.fromRGBO(25, 25, 60, 100),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    )
);