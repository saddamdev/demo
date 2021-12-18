import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' show AdSize;
import '../models/ad_helper.dart';
import '../models/category.dart';
import '../widgets/list_items.dart';
import '../widgets/my_banner_ad.dart';

const _adUnitId = "ca-app-pub-3940256099942544/6300978111";

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  void initState() {
    super.initState();
    loadAd();
    getClick();
  }

  @override
  Widget build(BuildContext context) {
    final _category = ModalRoute.of(context).settings.arguments as Category;

    return Scaffold(
      appBar: AppBar(title: Text(_category.title)),
      body: Column(
        children: [
          ListItems(category: _category),
          MyBannerAd(bannerAdUnitId: _adUnitId, adSize: AdSize.banner),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    interstitialAd.dispose();
  }
}
