import 'package:flutter/material.dart';
import 'package:resposiveapp/models/income_details_item_model.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeItemDetailsModel});
final IncomeItemDetailsModel incomeItemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetailsModel.color,
          shape:const OvalBorder()),
      ),
      title: Text(incomeItemDetailsModel.title,style: AppStyles.styleRegular16,),
      trailing: Text("${incomeItemDetailsModel.value}%",style: AppStyles.styleMedium16.copyWith(color: const Color(0xff208cc8)),),
    );
  }
}