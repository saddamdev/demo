import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' show AdSize;
import '../constants.dart';
import '../widgets/rating_button.dart';
import '../widgets/policy_button.dart';
import '../widgets/my_banner_ad.dart';

const _adUnitId = "ca-app-pub-3940256099942544/6300978111";

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/app-icon.png'),
          const SizedBox(height: 15.0),
          const Text('Like It', style: const TextStyle(fontSize: 32.0)),
          const SizedBox(height: 10.0),
          const Text('Version: 1.0.0', style: k24bold),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [RatingButton(), PolicyButton()],
          ),
          const SizedBox(height: 15.0),
          const Text('Copyright © 2021 Saddam.'),
          const SizedBox(height: 15.0),
          MyBannerAd(bannerAdUnitId: _adUnitId, adSize: AdSize.mediumRectangle),
        ],
      ),
    );
  }
}
