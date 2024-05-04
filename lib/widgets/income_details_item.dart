import 'package:flutter/material.dart';
import 'package:resposiveapp/models/income_details_item_model.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeItemDetailsModel});
final IncomeItemDetailsModel incomeItemDetailsModel;

  @override
  Widget build(BuildContext context) {
    // return Padding(
    //   padding: const EdgeInsets.only(left: 16),
    //   child: FittedBox(
    //     fit: BoxFit.scaleDown,
    //     child: Row(
    //       children: [
    //          Container(
    //         width: 12,
    //         height: 12,
    //         decoration: ShapeDecoration(
    //           color: incomeItemDetailsModel.color,
    //           shape:const OvalBorder()),
    //       ),
    //       Text(incomeItemDetailsModel.title,style: AppStyles.styleRegular16,),
    //        Text("${incomeItemDetailsModel.value}%",style: AppStyles.styleMedium16.copyWith(color: const Color(0xff208cc8)),),
    //       ],
    //     ),
    //   ),
    // );
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetailsModel.color,
          shape:const OvalBorder()),
      ),
      title: Text(incomeItemDetailsModel.title,style: AppStyles.styleRegular16(context),),
      trailing: Text("${incomeItemDetailsModel.value}%",style: AppStyles.styleMedium16(context).copyWith(color: const Color(0xff208cc8)),),
    );
  }
}