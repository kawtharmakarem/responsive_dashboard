import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/widgets/adaptive_layout_widget.dart';

import '../widgets/desktop_layout.dart';
import '../widgets/mobile_layout.dart';
import '../widgets/tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kbackground,
      body: AdaptiveLayout(
          mobileLayout: (context) =>const MobileLayout(),
          tabletLayout: (context) =>const TabletLayout(),
          desktopLayout: (context) =>const DesktopLayout()),
    );
  }
}
