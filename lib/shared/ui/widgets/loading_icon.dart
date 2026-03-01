import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'package:taskflow/gen/assets.gen.dart';
import 'package:taskflow/shared/ui/widgets/svg_icon.dart';
import '../app_preview.dart';

class LoadingIcon extends StatefulWidget {

  const LoadingIcon({
    super.key,
    this.size = 24,
    this.color,
  });

  final double size;
  final Color? color;

  @override
  State<LoadingIcon> createState() => _LoadingIconState();
}

class _LoadingIconState extends State<LoadingIcon>
    with SingleTickerProviderStateMixin {
  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1000),
  )..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _c,
      child: SvgIcon(
        Assets.icons.icLoaderCircle,
        size: widget.size,
        color: widget.color,
      ),
      builder: (_, child) {
        return Transform.rotate(
          angle: _c.value * 2 * math.pi,
          child: child,
        );
      },
    );
  }
}

@AppPreview()
Widget loadingIcon() => LoadingIcon(color: Color(0xFFFFFFFF));
