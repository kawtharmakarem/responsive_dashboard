import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/allexpenses_quickinvoice_section.dart';
import 'package:resposiveapp/widgets/income_section.dart';
import 'package:resposiveapp/widgets/mycard_transactionhistory_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(height: 24,),
          MyCardAndHistoryTransactionSection(),
           SizedBox(height: 24,),
          IncomeSection()
        ],
      ),
    );
  }
}