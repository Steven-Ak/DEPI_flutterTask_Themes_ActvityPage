import 'package:flutter/material.dart';
import 'package:task_3/main.dart';
import 'package:task_3/user.dart';
import 'package:task_3/user_activity_appbar.dart';
import 'package:task_3/activity_content.dart';

class ActivityPage extends StatelessWidget{
  final User user;
  final void Function()? changeTheme;
  final ThemeMode currentThemeMode;
  const ActivityPage({super.key, required this.user, this.changeTheme, this.currentThemeMode = ThemeMode.light});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UserActivityAppbar(nofNum: getUser().notfiy, changeTheme: changeTheme ,currentThemeMode: currentThemeMode,) ,
      body: ActivityContent(context),
    );
  }
}