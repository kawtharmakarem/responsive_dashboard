import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposiveapp/models/user_info_model.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
// const  UserInfoListTile(  this.title,  this.subTitle,{super.key, this.image});
  // final String title;
  // final String subTitle;
  // final String? image;
 final UserInfoModel userInfoModel;

  const UserInfoListTile({super.key, required this.userInfoModel});
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kCard,
      elevation: 0,
      child: Center(
        child: ListTile(
          leading:SvgPicture.asset(userInfoModel.image),
          title: Text(userInfoModel.title,style: AppStyles.styleSemiBold16(context),),
          subtitle: Text(userInfoModel.subTitle,style: AppStyles.styleRegular12(context),),
        ),
      ),
    );
  }
}