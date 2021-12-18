import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeChanger with ChangeNotifier {
  ThemeChanger({@required this.isDark}) {
    _toggleTheme();
  }

  bool isDark;
  ThemeData _themeMode;

  ThemeData _light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(elevation: 0, centerTitle: true),
  );

  ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF1C1D22),
    scaffoldBackgroundColor: Color(0xFF1C1D22),
    appBarTheme: AppBarTheme(elevation: 0, centerTitle: true),
  );

  IconData _themeModeIcon;
  Color _categoryBackgroundColor;

  void _toggleTheme() {
    switch (isDark) {
      case true:
        _themeMode = _dark;
        _themeModeIcon = Icons.wb_sunny_rounded;
        _categoryBackgroundColor = Color(0xFF25262D);
        break;
      case false:
        _themeMode = _light;
        _themeModeIcon = Icons.nightlight_round;
        _categoryBackgroundColor = Color(0xFFF6F8FA);
        break;
    }
  }

  void switchTheme() async {
    isDark = !isDark;
    _toggleTheme();
    notifyListeners();
    final _box = await Hive.openBox('themeMode');
    _box.put('mode', isDark);
  }

  ThemeData get themeMode => _themeMode;
  IconData get themeModeIcon => _themeModeIcon;
  Color get categoryBackgroundColor => _categoryBackgroundColor;
}
