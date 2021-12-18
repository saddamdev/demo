import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' show MobileAds;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart' show ChangeNotifierProvider;
import 'models/theme_changer.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Hive.initFlutter();
  final _box = await Hive.openBox('themeMode');
  bool _mode = _box.get('mode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeChanger(isDark: _mode),
      child: MyApp(),
    ),
  );
}
