import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/size_config.dart';
import 'package:resposiveapp/widgets/adaptive_layout_widget.dart';
import 'package:resposiveapp/widgets/custom_drawer.dart';

import '../widgets/desktop_layout.dart';
import '../widgets/mobile_layout.dart';
import '../widgets/tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  GlobalKey<ScaffoldState> scaffoldState=GlobalKey();
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Scaffold(
key: scaffoldState,
      backgroundColor: AppColors.kbackground,
      appBar: MediaQuery.sizeOf(context).width<SizeConfig.tablet ? AppBar(
        elevation: 0,
        backgroundColor:const Color(0xffFaFAFA),
        leading:GestureDetector(
          onTap: (){
            scaffoldState.currentState!.openDrawer();
          },
          child:const Icon(Icons.menu))) 
      : null,
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet ? CustomDrawer() : null,
      body: AdaptiveLayout(
          mobileLayout: (context) =>const MobileLayout(),
          tabletLayout: (context) =>const TabletLayout(),
          desktopLayout: (context) =>const DesktopLayout()),
    );
  }
}
