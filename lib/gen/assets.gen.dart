// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_arrow_left.svg
  SvgGenImage get icArrowLeft =>
      const SvgGenImage('assets/icons/ic_arrow_left.svg');

  /// File path: assets/icons/ic_bell.svg
  SvgGenImage get icBell => const SvgGenImage('assets/icons/ic_bell.svg');

  /// File path: assets/icons/ic_calendar.svg
  SvgGenImage get icCalendar =>
      const SvgGenImage('assets/icons/ic_calendar.svg');

  /// File path: assets/icons/ic_check.svg
  SvgGenImage get icCheck => const SvgGenImage('assets/icons/ic_check.svg');

  /// File path: assets/icons/ic_chevron_down.svg
  SvgGenImage get icChevronDown =>
      const SvgGenImage('assets/icons/ic_chevron_down.svg');

  /// File path: assets/icons/ic_chevron_right.svg
  SvgGenImage get icChevronRight =>
      const SvgGenImage('assets/icons/ic_chevron_right.svg');

  /// File path: assets/icons/ic_circle_check.svg
  SvgGenImage get icCircleCheck =>
      const SvgGenImage('assets/icons/ic_circle_check.svg');

  /// File path: assets/icons/ic_clock.svg
  SvgGenImage get icClock => const SvgGenImage('assets/icons/ic_clock.svg');

  /// File path: assets/icons/ic_close.svg
  SvgGenImage get icClose => const SvgGenImage('assets/icons/ic_close.svg');

  /// File path: assets/icons/ic_ellipsis_vertical.svg
  SvgGenImage get icEllipsisVertical =>
      const SvgGenImage('assets/icons/ic_ellipsis_vertical.svg');

  /// File path: assets/icons/ic_eye.svg
  SvgGenImage get icEye => const SvgGenImage('assets/icons/ic_eye.svg');

  /// File path: assets/icons/ic_eye_off.svg
  SvgGenImage get icEyeOff => const SvgGenImage('assets/icons/ic_eye_off.svg');

  /// File path: assets/icons/ic_folder_kanban.svg
  SvgGenImage get icFolderKanban =>
      const SvgGenImage('assets/icons/ic_folder_kanban.svg');

  /// File path: assets/icons/ic_house.svg
  SvgGenImage get icHouse => const SvgGenImage('assets/icons/ic_house.svg');

  /// File path: assets/icons/ic_loader_circle.svg
  SvgGenImage get icLoaderCircle =>
      const SvgGenImage('assets/icons/ic_loader_circle.svg');

  /// File path: assets/icons/ic_log_out.svg
  SvgGenImage get icLogOut => const SvgGenImage('assets/icons/ic_log_out.svg');

  /// File path: assets/icons/ic_pen.svg
  SvgGenImage get icPen => const SvgGenImage('assets/icons/ic_pen.svg');

  /// File path: assets/icons/ic_pencil.svg
  SvgGenImage get icPencil => const SvgGenImage('assets/icons/ic_pencil.svg');

  /// File path: assets/icons/ic_plus.svg
  SvgGenImage get icPlus => const SvgGenImage('assets/icons/ic_plus.svg');

  /// File path: assets/icons/ic_sparkles.svg
  SvgGenImage get icSparkles =>
      const SvgGenImage('assets/icons/ic_sparkles.svg');

  /// File path: assets/icons/ic_target.svg
  SvgGenImage get icTarget => const SvgGenImage('assets/icons/ic_target.svg');

  /// File path: assets/icons/ic_trash.svg
  SvgGenImage get icTrash => const SvgGenImage('assets/icons/ic_trash.svg');

  /// File path: assets/icons/ic_user.svg
  SvgGenImage get icUser => const SvgGenImage('assets/icons/ic_user.svg');

  /// File path: assets/icons/ic_wand_sparkles.svg
  SvgGenImage get icWandSparkles =>
      const SvgGenImage('assets/icons/ic_wand_sparkles.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    icArrowLeft,
    icBell,
    icCalendar,
    icCheck,
    icChevronDown,
    icChevronRight,
    icCircleCheck,
    icClock,
    icClose,
    icEllipsisVertical,
    icEye,
    icEyeOff,
    icFolderKanban,
    icHouse,
    icLoaderCircle,
    icLogOut,
    icPen,
    icPencil,
    icPlus,
    icSparkles,
    icTarget,
    icTrash,
    icUser,
    icWandSparkles,
  ];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
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
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
