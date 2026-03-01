import 'package:flutter/cupertino.dart';
import 'package:taskflow/core/theming/app_pallete.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'svg_icon.dart';
import '../app_preview.dart';

class SparkleIconBox extends StatelessWidget {
  final Gradient? gradient;
  @AppPreview()
  const SparkleIconBox({super.key, this.gradient});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: gradient ?? AppPalette.gradientPrimary,
        boxShadow: AppPalette.shadowMdLight,
      ),
      child: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgIcon(
            Assets.icons.icSparkles,
            color: context.colors.primaryForeground,
            size: 32,
          )
      )
    );
  }
}
