import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/theme_changer.dart';

class ThemeModeIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(context.watch<ThemeChanger>().themeModeIcon),
      onPressed: context.read<ThemeChanger>().switchTheme,
    );
  }
}
