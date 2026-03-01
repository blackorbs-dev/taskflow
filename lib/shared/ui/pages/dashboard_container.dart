import 'package:flutter/material.dart';
import 'package:taskflow/shared/ui/widgets/responsive_inset.dart';
import '../widgets/bottom_bar.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: body),
      bottomNavigationBar: const ResponsiveInset(
          padding: EdgeInsets.zero,
          child: BottomNavBar()
      ),
    );
  }
}