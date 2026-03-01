import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:taskflow/core/router/routes.dart';
import 'package:taskflow/core/theming/theme_extensions.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/translations/locale_keys.g.dart';
import 'svg_icon.dart';

class BottomNavBar extends StatelessWidget {

  const BottomNavBar({super.key});

  static final items = <_NavBarItem>[
    _NavBarItem(
      icon: Assets.icons.icHouse,
      labelKey: LocaleKeys.home,
      route: Routes.home
    ),
    _NavBarItem(
      icon: Assets.icons.icFolderKanban,
      labelKey: LocaleKeys.projects,
      route: Routes.projects

    ),
    _NavBarItem(
      icon: Assets.icons.icSparkles,
      labelKey: LocaleKeys.ai,
      route: Routes.ai
    ),
    _NavBarItem(
      icon: Assets.icons.icUser,
      labelKey: LocaleKeys.profile,
      route: Routes.profile
    ),
  ];

  int _indexFromRoute(String route) {
    route = route == Routes.tasks ? Routes.projects : route;
    final index = items.indexWhere(
        (item) => item.route == route
    );
    return index < 0 ? 0 : index;
  }

  @override
  Widget build(BuildContext context) {

    final currentRoute = GoRouterState.of(context).uri.path;
    final currentIndex = _indexFromRoute(currentRoute);

    return NavigationBar(
      height: 68,
      backgroundColor: context.colors.background,
      indicatorColor: Colors.transparent,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) {
          return context.textStyles.labelMedium?.copyWith(
            color: states.contains(WidgetState.selected)
                ? context.colors.accentCoral : context.colors.mutedForeground
          );
        }
      ),
      labelPadding: EdgeInsets.zero,
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        context.go(items[index].route);
      },
      destinations: List.generate(
        items.length,
            (index) {
          final item = items[index];

          return NavigationDestination(
            label: context.tr(item.labelKey),
            icon: _NavIcon(
              icon: item.icon,
              active: false,
            ),
            selectedIcon: _NavIcon(
              icon: item.icon,
              active: true,
            ),
          );
        },
      ),
    );
  }
}

class _NavIcon extends StatefulWidget {
  final SvgGenImage icon;
  final bool active;

  const _NavIcon({
    required this.icon,
    required this.active,
  });

  @override
  State<_NavIcon> createState() => _NavIconState();
}

class _NavIconState extends State<_NavIcon> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  late final Animation<double> _translateY;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 320),
    );

    /// Y movement: up → down → settle
    _translateY = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween(begin: 0.0, end: -8.0)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 35,
      ),
      TweenSequenceItem(
        tween: Tween(begin: -8.0, end: 2.0)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 35,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 2.0, end: 0.0)
            .chain(CurveTween(curve: Curves.easeOutBack)),
        weight: 30,
      ),
    ]).animate(_controller);

    /// Scale: happens mostly at the end
    _scale = TweenSequence<double>([
      TweenSequenceItem(
        tween: ConstantTween(1.0),
        weight: 55,
      ),
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.12)
            .chain(CurveTween(curve: Curves.easeOutBack)),
        weight: 45,
      ),
    ]).animate(_controller);

    if (widget.active) {
      _controller.forward(from: 0);
    }
  }

  @override
  void didUpdateWidget(covariant _NavIcon oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Only animate when becoming selected
    if (!oldWidget.active && widget.active) {
      _controller.forward(from: 0);
    }

    // Reset when unselected
    if (oldWidget.active && !widget.active) {
      _controller.stop();
      _controller.value = 0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: _controller,
      builder: (_, _) {
        return Transform.translate(
          offset: Offset(0, _translateY.value),
          child: Transform.scale(
            scale: widget.active
                ? (_controller.isAnimating ? _scale.value : 1.12)
                : 1.0,
            child: SvgIcon(
              widget.icon,
              size: 22,
              color: widget.active
                  ? context.colors.accentCoral
                  : context.colors.mutedForeground,
            ),
          ),
        );
      },
    );
  }
}

@immutable
class _NavBarItem {
  final SvgGenImage icon;
  final String labelKey;
  final String route;

  const _NavBarItem({
    required this.icon,
    required this.labelKey,
    required this.route,
  });
}