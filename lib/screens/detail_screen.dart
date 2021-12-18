import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart' show AdSize;
import '../models/item.dart';
import '../widgets/content_subtitle.dart';
import '../widgets/content.dart';
import '../widgets/my_banner_ad.dart';

const _adUnitId = "ca-app-pub-3940256099942544/6300978111";

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _item = ModalRoute.of(context).settings.arguments as Item;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(title: Text(_item.title), pinned: true),
                ContentSubTitle(subTitle: _item.subTitle),
                Content(contentList: _item.steps),
              ],
            ),
          ),
          MyBannerAd(bannerAdUnitId: _adUnitId, adSize: AdSize.banner),
        ],
      ),
    );
  }
}
