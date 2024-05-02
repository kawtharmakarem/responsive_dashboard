import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/widgets/all_expenses_item.dart';

import '../models/all_expenses_item_model.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});
  

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
 final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        image: AppAssets.investment,
        title: 'Balance',
        date: 'April 2022',
        price: '\$ 20.129'),
    AllExpensesItemModel(
        image: AppAssets.investment,
        title: 'income',
        date: 'April 2022',
        price: '\$ 20.129'),
    AllExpensesItemModel(
        image: AppAssets.investment,
        title: 'Expenses',
        date: 'April 2022',
        price: '\$ 20.129'),
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(
              allExpensesItemModel: item,
              isSelected: selectedIndex==index,
            ),
          ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex=index;
              });
            },
            child: AllExpensesItem(
            allExpensesItemModel: item,
            isSelected: selectedIndex==index,
          ),
          ),
        );
      }
    }).toList());
  }
}
