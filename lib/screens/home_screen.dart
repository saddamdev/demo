import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' show AdSize;
import '../widgets/theme_mode_icon.dart';
import '../widgets/category_view.dart';
import '../widgets/my_banner_ad.dart';

const _adUnitId = "ca-app-pub-3940256099942544/6300978111";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          ThemeModeIcon(),
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () => Navigator.pushNamed(context, '/settings'),
          ),
        ],
      ),
      body: Column(
        children: [
          CategoryView(),
          MyBannerAd(bannerAdUnitId: _adUnitId, adSize: AdSize.mediumRectangle),
        ],
      ),
    );
  }
}
