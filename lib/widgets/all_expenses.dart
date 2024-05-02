import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/all_expenses_header.dart';
import 'package:resposiveapp/widgets/all_expenses_item_listview.dart';
import 'package:resposiveapp/widgets/custom_backgound_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgorundContainer(child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemListView()
         
        ],
      ),);
  }
}


