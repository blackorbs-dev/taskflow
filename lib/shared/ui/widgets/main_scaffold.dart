import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:taskflow/core/theming/app_pallete.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import '../app_preview.dart';
import '../controller/user_provider.dart';
import 'responsive_inset.dart';
import 'svg_icon.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({
    super.key,
    required this.title,
    this.subtitle,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
    required this.body
  });

  final String title;
  final String? subtitle;
  final EdgeInsetsGeometry padding;
  final Widget body;

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Column(
      children: [
        ResponsiveInset(
          padding: const EdgeInsets.symmetric(
            vertical: 6, horizontal: 16
          ),
          child: MainAppBar(
              title: title,
              subtitle: subtitle
          ),
        ),
        const Divider(),
        Expanded(
          child: ResponsiveInset(
            padding: padding,
            child: body,
          ),
        ),
        const Divider()
      ],
    ));
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key, required this.title, this.subtitle});

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 2,
          children: [
            Text(
              title,
              style: context.textStyles.titleLarge,
            ),
            if(subtitle != null)
              Text(
                subtitle!,
                style: context.textStyles.bodyMedium?.copyWith(
                    color: context.colors.mutedForeground
                ),
              )
          ],
        )),
        _NotificationIcon(),
        UserIcon()
      ],
    );
  }
}

class UserIcon extends ConsumerWidget{
  final TextStyle? textStyle;
  final EdgeInsetsGeometry padding;
  
  const UserIcon({
    super.key,
    this.textStyle,
    this.padding = const EdgeInsets.all(14)
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userInitial = ref.watch(userInitialProvider);

    return DecoratedBox(
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppPalette.gradientPrimary
      ),
      child: Padding(
          padding: padding,
          child: Text(
              userInitial,
              style: (textStyle ?? context.textStyles.titleMedium)?.copyWith(
                  color: context.colors.primaryForeground
              )
          )
      )
    );
  }
}

class _NotificationIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgIcon(
          Assets.icons.icBell,
          color: context.colors.foreground
        ),
        Positioned(
          top: -4,
          right: -4,
          child: CircleAvatar(
            radius: 5,
            backgroundColor: context.colors.accentCoral
          )
        )
      ]
    );
  }
}

@AppPreview()
Widget mainAppBar() => MainAppBar(title: 'Hey, Jamiu');
