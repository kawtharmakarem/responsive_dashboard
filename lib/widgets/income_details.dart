import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:resposiveapp/models/income_details_item_model.dart';
import 'package:resposiveapp/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items=[
    IncomeItemDetailsModel(color: Color(0xff208cc8), title: "Design service", value: "40"),
    IncomeItemDetailsModel(color: Color(0xff4EB7F2), title: "Design product", value: "25"),
    IncomeItemDetailsModel(color: Color(0xff064060), title: "Product royalti", value: "20"),
    IncomeItemDetailsModel(color: Color(0xffE2DCEC), title: "Others", value: "22"),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => IncomeDetailsItem(incomeItemDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context,index){
    //     return IncomeDetailsItem(incomeItemDetailsModel: items[index]);
    //   },
    // );
  }
}