import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/widgets/all_expenses_item_header.dart';

import '../models/all_expenses_item_model.dart';
import '../utils/app_styles.dart';

class SelectedExpensesItem extends StatelessWidget {
  const SelectedExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: AppColors.kSecondary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensesItemModel.image,
            imageBgColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(color:const Color(0xffFAFAFA)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
