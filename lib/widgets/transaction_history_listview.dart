import 'package:flutter/cupertino.dart';
import 'package:resposiveapp/models/transaction_model.dart';
import 'package:resposiveapp/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
static const items=[
  TransactionModel(title: "Cash Withdrawel", date: "13 Apr 2022", amount: "\$ 20.129", isWithdrawel: true),
  TransactionModel(title: "Landing Page Project", date: "13 Apr 2022 at 3:30 PM", amount: "\$ 20.129", isWithdrawel: false),
  TransactionModel(title: "Juni Mobile App Project", date: "13 Apr 2022 at 3:30 PM", amount: "\$ 20.129", isWithdrawel: false),

];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: items[index]);
      },
    );
  }
}