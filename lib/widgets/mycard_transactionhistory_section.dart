import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/mycard_section.dart';
import 'package:resposiveapp/widgets/transaction_history.dart';

class MyCardAndHistoryTransactionSection extends StatelessWidget {
  const MyCardAndHistoryTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardSection(),
        Divider(height: 20,color: Color(0xffAAAAAA),),
        TransactionHistory()
      ],
    );
  }
}