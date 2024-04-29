import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Row(children: [
      Expanded(child: CustomDrawer())
     ],),
    );
    
  }
}