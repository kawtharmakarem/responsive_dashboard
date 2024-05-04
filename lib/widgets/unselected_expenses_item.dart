import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/all_expenses_item_header.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';

class UnselectedExpensesItem extends StatelessWidget {
  const UnselectedExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side:const BorderSide(color: Color(0xffF1F1F1))
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: allExpensesItemModel.image),
          const SizedBox(height: 34,),
          Text(allExpensesItemModel.title,style: AppStyles.styleSemiBold16(context),),
          const SizedBox(height: 8,),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context),),
          const SizedBox(height: 10,),
          Text(allExpensesItemModel.price,style: AppStyles.styleSemiBold24(context),)
    
        ],
      ),
    );
  }
}
