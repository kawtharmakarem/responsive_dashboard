import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/all_expenses.dart';
import 'package:resposiveapp/widgets/custom_drawer.dart';
import 'package:resposiveapp/widgets/quik_invoice.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Row(children: [
      Expanded(child: CustomDrawer()),
      SizedBox(width: 32,),
      Expanded(flex: 2,
        child: Column(
        children: [

          AllExpenses(),
          SizedBox(height: 24,),
          QuickInvoice()
        ],
      ))
     ],),
    );
    
  }
}