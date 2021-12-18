import 'package:flutter/material.dart';
import 'package:provider/provider.dart' show Consumer;
import 'models/theme_changer.dart';
import 'screens/home_screen.dart';
import 'screens/list_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/settings_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeChanger>(
      builder: (_, themeChanger, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'App Name',
          theme: themeChanger.themeMode,
          initialRoute: '/',
          routes: {
            '/': (_) => HomeScreen(),
            '/list': (_) => ListScreen(),
            '/detail': (_) => DetailScreen(),
            '/settings': (_) => SettingsScreen(),
          },
        );
      },
    );
  }
}
