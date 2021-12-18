import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hive/hive.dart';

InterstitialAd _interstitialAd;
int _click;
bool _isOnline = false;

final AdListener _adListener = AdListener(
  onAdLoaded: (ad) => _isOnline = true,
  onAdFailedToLoad: (ad, error) {
    _isOnline = false;
    ad.dispose();
  },
  onAdClosed: (ad) => ad.dispose(),
  onApplicationExit: (ad) => ad.dispose(),
);

void loadAd() {
  _interstitialAd = InterstitialAd(
    adUnitId: "ca-app-pub-3940256099942544/1033173712",
    request: AdRequest(),
    listener: _adListener,
  );
  _interstitialAd.load();
}

void getClick() async {
  final _box = await Hive.openBox('themeMode');
  _click = _box.get('click') ?? 0;
}

void _setClick() async {
  final _box = await Hive.openBox('themeMode');
  _box.put('click', _click);
}

void _showAd() {
  print('C L I C K: $_click');
  if (_click == 3) {
    _interstitialAd.show();
    _click = 0;
    loadAd();
  } else {
    _click++;
  }
  print('C L I C K: $_click');
  _setClick();
}

InterstitialAd get interstitialAd => _interstitialAd;
void canShowAd() => _isOnline ? _showAd() : print("Can't show Ad");
