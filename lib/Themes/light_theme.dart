import 'package:flutter/material.dart';

ColorScheme lightColorScheme = ColorScheme.light(
    primary: Colors.white,
    primaryContainer: Colors.grey[200]);

AppBarTheme appBarThemeLight = const AppBarTheme(
  backgroundColor: Colors.white,
  foregroundColor: Colors.black,
);

TextTheme textThemeLight = const TextTheme(
  titleLarge: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
  bodySmall: TextStyle(color: Colors.indigoAccent, fontSize: 28, fontWeight: FontWeight.bold),
  bodyMedium: TextStyle(color: Colors.black),
  titleSmall: TextStyle(color: Colors.indigoAccent, fontSize: 15, fontWeight: FontWeight.bold)
);

OutlinedButtonThemeData outlinedButtonThemeLight = OutlinedButtonThemeData(
    style:OutlinedButton.styleFrom(
        side:const BorderSide(
        color: Colors.indigoAccent),
        foregroundColor: Colors.indigoAccent)
);

ListTileThemeData listTileThemeLight = ListTileThemeData(
  tileColor: Colors.grey[200]!,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20)
  )
);
