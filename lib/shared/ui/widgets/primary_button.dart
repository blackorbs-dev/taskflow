import 'package:flutter/material.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import '../../../core/theming/app_pallete.dart';
import '../app_preview.dart';
import 'loading_icon.dart';
import 'svg_icon.dart';

class PrimaryButton extends GradientButton {

  PrimaryButton.text({
    super.key,
    required String text,
    required super.onPressed,
    super.enabled,
    super.width,
    super.height,
    super.cornerRadius,
    super.padding,
    super.gradient,
  }) : super(
    childBuilder: (_) => _Text(text)
  );

   PrimaryButton.icon({
    super.key,
     required String text,
     required super.onPressed,
     required SvgGenImage icon,
     super.enabled,
     super.width,
     super.height,
     super.cornerRadius,
     super.padding,
     super.gradient,
  }) : super(
     childBuilder: (color) => _IconAndText(
       text: text,
       icon: _Icon(icon, color: color),
     )
   );

  PrimaryButton.loader({
    super.key,
    required String text,
    required super.onPressed,
    bool isLoading = false,
    String? loadingText,
    SvgGenImage? icon,
    bool enabled = true,
    super.width,
    super.height,
    super.cornerRadius,
    super.padding,
    super.gradient,
  }) : super(
      enabled: enabled && !isLoading,
      childBuilder: (color) => _LoaderAndText(
        text: text,
        isLoading: isLoading,
        loadingText: loadingText,
        icon: icon,
        color: color,
      )
  );
}

class GradientButton extends StatelessWidget{

  const GradientButton({
    super.key,
    required this.onPressed,
    this.enabled = true,
    this.width = double.infinity,
    this.height,
    this.cornerRadius = 12,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    this.gradient,
    required this.childBuilder
  });

  final VoidCallback onPressed;
  final bool enabled;
  /// Set to null to wrap content width
  final double? width;
  final double? height;
  final double cornerRadius;
  final EdgeInsetsGeometry padding;
  final Gradient? gradient;
  final Widget Function(Color foregroundColor) childBuilder;

  @override
  Widget build(BuildContext context) {

    final foregroundColor = context.colors.primaryForeground
        .withValues(alpha: enabled ? null : 0.7);

    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: gradient ?? AppPalette.gradientPrimary,
          borderRadius: BorderRadius.circular(cornerRadius),
          boxShadow: AppPalette.shadowMdLight
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(width ?? 0, height ?? 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius)
          ),
          textStyle: context.textStyles.bodyMedium,
          foregroundColor: foregroundColor,
          disabledForegroundColor: foregroundColor,
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: foregroundColor.withValues(alpha: 0.35),
          padding: padding,
        ),
        onPressed: enabled ? onPressed : null,
        child: childBuilder(foregroundColor),
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, maxLines: 1, overflow: TextOverflow.ellipsis);
  }
}

class _Icon extends StatelessWidget {
  const _Icon(this.icon, {this.color});

  final SvgGenImage? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgIcon(
        icon ?? Assets.icons.icCircleCheck,
        size: 18,
        color: color,
    );
  }
}

class _IconAndText extends StatelessWidget {
  const _IconAndText({
    super.key,
    required this.icon,
    required this.text,
  });

  final Widget icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 8,
      children: [
        icon,
        Flexible(child: _Text(text)),
      ],
    );
  }
}

class _LoaderAndText extends StatelessWidget {
  const _LoaderAndText({
    required this.text,
    this.loadingText,
    this.icon,
    this.color,
    required this.isLoading,
  });

  final String text;
  final String? loadingText;
  final SvgGenImage? icon;
  final Color? color;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 320),
      transitionBuilder: (child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: _IconAndText(
          key: ValueKey(isLoading),
          icon: isLoading ? LoadingIcon(
              size: 18,
              color: color
          ) : _Icon(icon, color: color),
          text: isLoading && loadingText != null ? loadingText! : text
      ),
    );
  }
}

@AppPreview()
Widget previewPrimaryButton() => PrimaryButton.loader(
  text: 'Sign in',
  // icon: Assets.icons.icCircleCheck,
  // enabled: false,
  isLoading: true,
  loadingText: 'Signing in...',
  onPressed: () {},
);
