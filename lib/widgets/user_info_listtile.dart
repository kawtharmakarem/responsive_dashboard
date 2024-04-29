import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
const  UserInfoListTile(  this.title,  this.subTitle,{super.key, this.image});
  final String title;
  final String subTitle;
  final String? image;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.kCard,
      elevation: 0,
      child: ListTile(
        leading:image==null ?SvgPicture.asset(AppAssets.lekan) : SvgPicture.asset(image!),
        title: Text(title,style: AppStyles.styleSemiBold16,),
        subtitle: Text(subTitle,style: AppStyles.styleRegular12,),
      ),
    );
  }
}