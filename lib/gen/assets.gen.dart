/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/browser.png
  AssetGenImage get browser => const AssetGenImage('assets/icons/browser.png');

  /// File path: assets/icons/calendar.png
  AssetGenImage get calendar =>
      const AssetGenImage('assets/icons/calendar.png');

  /// File path: assets/icons/credit-card.png
  AssetGenImage get creditCard =>
      const AssetGenImage('assets/icons/credit-card.png');

  /// File path: assets/icons/cvv.png
  AssetGenImage get cvv => const AssetGenImage('assets/icons/cvv.png');

  /// File path: assets/icons/image.png
  AssetGenImage get image => const AssetGenImage('assets/icons/image.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [browser, calendar, creditCard, cvv, image, user];
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/ghavamin.png
  AssetGenImage get ghavamin => const AssetGenImage('assets/logo/ghavamin.png');

  /// File path: assets/logo/keshavarzi.png
  AssetGenImage get keshavarzi =>
      const AssetGenImage('assets/logo/keshavarzi.png');

  /// File path: assets/logo/maskan.png
  AssetGenImage get maskan => const AssetGenImage('assets/logo/maskan.png');

  /// File path: assets/logo/mehr-iran.png
  AssetGenImage get mehrIran =>
      const AssetGenImage('assets/logo/mehr-iran.png');

  /// File path: assets/logo/mellat.png
  AssetGenImage get mellat => const AssetGenImage('assets/logo/mellat.png');

  /// File path: assets/logo/melli.png
  AssetGenImage get melli => const AssetGenImage('assets/logo/melli.png');

  /// File path: assets/logo/saderat.png
  AssetGenImage get saderat => const AssetGenImage('assets/logo/saderat.png');

  /// File path: assets/logo/saman.png
  AssetGenImage get saman => const AssetGenImage('assets/logo/saman.png');

  /// File path: assets/logo/sepah.png
  AssetGenImage get sepah => const AssetGenImage('assets/logo/sepah.png');

  /// File path: assets/logo/shahr.png
  AssetGenImage get shahr => const AssetGenImage('assets/logo/shahr.png');

  /// File path: assets/logo/tejarat.png
  AssetGenImage get tejarat => const AssetGenImage('assets/logo/tejarat.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        ghavamin,
        keshavarzi,
        maskan,
        mehrIran,
        mellat,
        melli,
        saderat,
        saman,
        sepah,
        shahr,
        tejarat
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
