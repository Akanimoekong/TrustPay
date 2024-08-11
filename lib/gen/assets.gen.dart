/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/app_icon.svg
  SvgGenImage get appIcon => const SvgGenImage('assets/icons/app_icon.svg');

  /// File path: assets/icons/app_icon_white.svg
  SvgGenImage get appIconWhite =>
      const SvgGenImage('assets/icons/app_icon_white.svg');

  /// File path: assets/icons/apple_icon.svg
  SvgGenImage get appleIcon => const SvgGenImage('assets/icons/apple_icon.svg');

  /// File path: assets/icons/arrow_down.svg
  SvgGenImage get arrowDown => const SvgGenImage('assets/icons/arrow_down.svg');

  /// File path: assets/icons/arrow_right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow_right.svg');

  /// File path: assets/icons/create_active.svg
  SvgGenImage get createActive =>
      const SvgGenImage('assets/icons/create_active.svg');

  /// File path: assets/icons/create_inactive.svg
  SvgGenImage get createInactive =>
      const SvgGenImage('assets/icons/create_inactive.svg');

  /// File path: assets/icons/facebook_icon.svg
  SvgGenImage get facebookIcon =>
      const SvgGenImage('assets/icons/facebook_icon.svg');

  /// File path: assets/icons/google_icom.svg
  SvgGenImage get googleIcom =>
      const SvgGenImage('assets/icons/google_icom.svg');

  /// File path: assets/icons/home_active.svg
  SvgGenImage get homeActive =>
      const SvgGenImage('assets/icons/home_active.svg');

  /// File path: assets/icons/home_inactive.svg
  SvgGenImage get homeInactive =>
      const SvgGenImage('assets/icons/home_inactive.svg');

  /// File path: assets/icons/invisible_icon.svg
  SvgGenImage get invisibleIcon =>
      const SvgGenImage('assets/icons/invisible_icon.svg');

  /// File path: assets/icons/money_recive.svg
  SvgGenImage get moneyRecive =>
      const SvgGenImage('assets/icons/money_recive.svg');

  /// File path: assets/icons/money_send.svg
  SvgGenImage get moneySend => const SvgGenImage('assets/icons/money_send.svg');

  /// File path: assets/icons/notification_icon.svg
  SvgGenImage get notificationIcon =>
      const SvgGenImage('assets/icons/notification_icon.svg');

  /// File path: assets/icons/setting_active.svg
  SvgGenImage get settingActive =>
      const SvgGenImage('assets/icons/setting_active.svg');

  /// File path: assets/icons/setting_inactive.svg
  SvgGenImage get settingInactive =>
      const SvgGenImage('assets/icons/setting_inactive.svg');

  /// File path: assets/icons/trash.svg
  SvgGenImage get trash => const SvgGenImage('assets/icons/trash.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        appIcon,
        appIconWhite,
        appleIcon,
        arrowDown,
        arrowRight,
        createActive,
        createInactive,
        facebookIcon,
        googleIcom,
        homeActive,
        homeInactive,
        invisibleIcon,
        moneyRecive,
        moneySend,
        notificationIcon,
        settingActive,
        settingInactive,
        trash
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/google_png.png
  AssetGenImage get googlePng =>
      const AssetGenImage('assets/images/google_png.png');

  /// File path: assets/images/home_background.png
  AssetGenImage get homeBackground =>
      const AssetGenImage('assets/images/home_background.png');

  /// List of all assets
  List<AssetGenImage> get values => [googlePng, homeBackground];
}

class Assets {
  Assets._();

  static const String city = 'assets/city.json';
  static const String country = 'assets/country.json';
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const String state = 'assets/state.json';

  /// List of all assets
  static List<String> get values => [city, country, state];
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
