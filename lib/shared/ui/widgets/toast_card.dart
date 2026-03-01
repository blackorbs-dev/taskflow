import 'package:flutter/material.dart';
import '../../domain/alert_info.dart';

class ToastCard extends StatefulWidget {
  final String message;
  final AlertType type;
  final int durationInMillis;

  const ToastCard({
    super.key,
    required this.message,
    required this.type,
    required this.durationInMillis,
  });

  @override
  State<ToastCard> createState() => _ToastCardState();
}

class _ToastCardState extends State<ToastCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnim;
  late final Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
      reverseDuration: const Duration(milliseconds: 400),
    );

    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
      reverseCurve: Curves.easeInCubic,
    );

    _slideAnim = Tween<Offset>(
      begin: const Offset(0, 1), // start offscreen bottom
      end: const Offset(0, 0),   // slide up into view
    ).animate(curve);

    _fadeAnim = Tween<double>(begin: 0, end: 1).animate(curve);

    _controller.forward();

    // Start reverse shortly before the entry is removed
    Future.delayed( Duration(milliseconds: widget.durationInMillis - 1000), () {
      if (mounted) _controller.reverse();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final alertStyle = _AlertStyle.of(widget.type);

    return Align(
      alignment: Alignment.bottomCenter,
      child: FadeTransition(
        opacity: _fadeAnim,
        child: SlideTransition(
          position: _slideAnim,
          child: Material(
            color: Colors.transparent,
            child: Container(
              padding: EdgeInsetsGeometry.fromSTEB(16, 14, 16, MediaQuery.of(context).viewPadding.bottom+14),
              margin: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              decoration: BoxDecoration(
                color: alertStyle.color.withValues(alpha: 0.97),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 12,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(alertStyle.icon, color: Colors.white, size: 22),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      widget.message,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.3,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Helper mapping for colors/icons per AlertType
class _AlertStyle {
  final Color color;
  final IconData icon;
  _AlertStyle(this.color, this.icon);

  static _AlertStyle of(AlertType type) => switch (type) {
    AlertType.success => _AlertStyle(Colors.green.shade600, Icons.check_circle),
    AlertType.error => _AlertStyle(Colors.red.shade600, Icons.error),
    AlertType.warning => _AlertStyle(Colors.orange.shade700, Icons.warning_amber_rounded),
    AlertType.info => _AlertStyle(Colors.blue.shade600, Icons.info)
  };
}
