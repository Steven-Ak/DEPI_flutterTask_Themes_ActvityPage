import 'package:flutter/material.dart';
import 'package:task_3/activity_page.dart';
import 'user.dart';
import 'package:task_3/Themes/light_theme.dart';
import 'package:task_3/Themes/dark_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleTheme(){
    setState(() {
      if(currentThemeMode == ThemeMode.light){
        currentThemeMode = ThemeMode.dark;
      } else {
        currentThemeMode = ThemeMode.light;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ActivityPage(user: getUser(),changeTheme: toggleTheme, currentThemeMode: currentThemeMode),
      theme: ThemeData(
        listTileTheme: listTileThemeLight,
      colorScheme: lightColorScheme,
      appBarTheme: appBarThemeLight,
      textTheme: textThemeLight,
      outlinedButtonTheme: outlinedButtonThemeLight
      ),
      darkTheme: ThemeData(
        listTileTheme: listTileThemeDark,
          colorScheme: darkColorScheme,
          appBarTheme: appBarThemeDark,
          textTheme: textThemeDark,
          outlinedButtonTheme: outlinedButtonThemeDark
      ),
      themeMode: currentThemeMode,
    );
  }
}
User getUser(){
  User user1 = User(
      name: "Steven Akram",
      notfiy: 3);

  User user2 = User(
      name: "Hamed Ahmed",
      img: "assets/images/therock.jpg",
      notfiy: 1);

  return user2;
}