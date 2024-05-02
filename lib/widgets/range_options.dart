import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xffF1F1F1)),
        )),
        child: Row(
          children: [
         const Text('Monthly',style: AppStyles.styleMedium16,),
    
        const  SizedBox(width: 18,),
          SvgPicture.asset(AppAssets.arrowDown)
        ],),
      );
  }
}