import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_styles.dart';
import 'package:resposiveapp/widgets/lastest_transaction_listview.dart';

class LastestTransactionSection extends StatelessWidget {
  const LastestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Lastest Transactions',style: AppStyles.styleMedium16,),
         SizedBox(height: 12,),
         LastestTransactionListView(),
      ],
    );
  }
}