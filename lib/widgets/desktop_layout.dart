import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposiveapp/widgets/allexpenses_quickinvoice_section.dart';
import 'package:resposiveapp/widgets/custom_drawer.dart';
import 'package:resposiveapp/widgets/income_section.dart';
import 'package:resposiveapp/widgets/mycard_transactionhistory_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child:CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child:  Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: AllExpensesAndQuickInvoiceSection(),
                    )),
                    SizedBox(width: 5,),
                   Expanded(child: Column(
                     children: [
                      MyCardAndHistoryTransactionSection(),
                      SizedBox(height: 5,),
                      Expanded(
                        
                        child: IncomeSection()),
                     ],
                   )),
              ],
            ),
          )
        ],
      ),
                )
              ],
            )
    );
  }
}

