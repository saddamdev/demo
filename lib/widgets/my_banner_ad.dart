import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyBannerAd extends StatefulWidget {
  MyBannerAd({@required this.bannerAdUnitId, @required this.adSize});
  final String bannerAdUnitId;
  final AdSize adSize;

  @override
  _MyBannerAdState createState() => _MyBannerAdState();
}

class _MyBannerAdState extends State<MyBannerAd> {
  BannerAd _bannerAd;
  bool _isAdLoaded = false;

  void _prepareBannerAd() {
    _bannerAd = BannerAd(
      adUnitId: widget.bannerAdUnitId,
      size: widget.adSize,
      request: AdRequest(),
      listener: AdListener(
        onAdLoaded: (_) => setState(() => _isAdLoaded = true),
        onAdFailedToLoad: (ad, _) => ad.dispose(),
        onApplicationExit: (ad) => ad.dispose(),
      ),
    );
    _bannerAd.load();
  }

  @override
  void initState() {
    super.initState();
    _prepareBannerAd();
  }

  @override
  Widget build(BuildContext context) {
    return _createBannerAd(_isAdLoaded);
  }

  Widget _createBannerAd(bool isLoaded) {
    return isLoaded
        ? Container(
            alignment: Alignment.center,
            width: _bannerAd.size.width.toDouble(),
            height: _bannerAd.size.height.toDouble(),
            child: AdWidget(ad: _bannerAd),
          )
        : Container();
  }

  @override
  void dispose() {
    super.dispose();
    _bannerAd.dispose();
  }
}
