import 'package:flutter/cupertino.dart';
import 'package:resposiveapp/utils/app_styles.dart';
import 'package:resposiveapp/widgets/transaction_history_listview.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 10,),
        Text('13 April 2022',style: AppStyles.styleMedium16.copyWith(color: const Color(0xffAAAAAA)),),
        const SizedBox(height: 5,),
        const TransactionHistoryListView()
      ],
    );
  }
}

