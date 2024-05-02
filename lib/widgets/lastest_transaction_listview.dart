import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/widgets/user_info_listtile.dart';

import '../models/user_info_model.dart';

class LastestTransactionListView extends StatelessWidget {
  const LastestTransactionListView({super.key});
  static const List<UserInfoModel> items=[
    UserInfoModel(image: AppAssets.madrani, title: "Madrani Andi", subTitle: "demo@gmail.com"),
    UserInfoModel(image: AppAssets.jousa, title: "Jousa", subTitle: "demo@gmail.com"),
    UserInfoModel(image: AppAssets.madrani, title: "Madrani Andi", subTitle: "demo@gmail.com")
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((userInfoModel) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: userInfoModel))).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
      
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(child: UserInfoListTile(userInfoModel: items[index]));
    //     }
    //   ),
    // );
  }
}