import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/selected_expenses_item.dart';
import 'package:resposiveapp/widgets/unselected_expenses_item.dart';

import '../models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isSelected});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? SelectedExpensesItem(allExpensesItemModel: allExpensesItemModel)
        : UnselectedExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
