import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:instagram_app/models/ads_test/ad_helper.dart';

class AdBanner2 extends StatefulWidget {
  const AdBanner2({super.key});

  @override
  State<AdBanner2> createState() => _AdBanner2State();
}

class _AdBanner2State extends State<AdBanner2> {
  late BannerAd bannerAd;
  bool _isAdReady = false;
  final AdSize _adSize = AdSize.banner;

  void _createBannerAd() {
    bannerAd = BannerAd(
        size: _adSize,
        adUnitId: AdHelper2.bannerAdUnitId,
        listener: BannerAdListener(onAdLoaded: (ad) {
          setState(() {
            _isAdReady = true;
          });
        }, onAdFailedToLoad: ((ad, error) {
          log("ad faild to load: ${error.message}");
        })),
        request: const AdRequest());
    bannerAd.load();
  }

  @override
  void initState() {
    super.initState();
    _createBannerAd();
  }

  @override
  void dispose() {
    super.dispose();

    bannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isAdReady) {
      return SizedBox(
        width: _adSize.width.toDouble(),
        height: _adSize.height.toDouble(),
        child: AdWidget(ad: bannerAd),
      );
    }
    return Container();
  }
}
