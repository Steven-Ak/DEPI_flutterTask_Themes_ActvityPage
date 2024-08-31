import 'package:flutter/material.dart';

class UserActivityAppbar extends StatelessWidget implements PreferredSizeWidget{
  final int nofNum;
  final void Function()? changeTheme;
  final ThemeMode currentThemeMode;

  const UserActivityAppbar({super.key, required this.nofNum, this.changeTheme, this.currentThemeMode = ThemeMode.light});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios_new_outlined),
      title: RichText(
        text: TextSpan(style: const TextStyle( fontSize: 28, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(text: "Activity", style: Theme.of(context).textTheme.titleLarge),
          TextSpan(text: " ($nofNum)", style: Theme.of(context).textTheme.bodySmall)
        ]
        ),

      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: changeTheme,
          icon: currentThemeMode == ThemeMode.light
              ? const Icon(Icons.dark_mode_outlined)
              : const Icon(Icons.light_mode_outlined),iconSize: 32),
        )
      ],
    );
  }

  @override
  final  Size  preferredSize = const Size.fromHeight(56);
}