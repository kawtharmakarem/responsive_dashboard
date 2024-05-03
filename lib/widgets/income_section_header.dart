import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_assets.dart';
import '../utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Income',style: AppStyles.styleSemiBold20,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 12),
          decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(color: Color(0xffF1F1F1))
          )
        ),
        child: Row(
          children: [
            const Text('Monthly',style: AppStyles.styleMedium16,),
            const SizedBox(width: 16,),
            SvgPicture.asset(AppAssets.arrowDown)
          ],
        ),)
    
    
      ],
    );
  }
}