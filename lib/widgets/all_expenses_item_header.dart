import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'package:resposiveapp/utils/app_assets.dart';
import 'package:resposiveapp/utils/app_colors.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.image, this.imageBgColor, this.imageColor});
  final String image;
  final Color? imageBgColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding:const EdgeInsets.all(14),
          decoration: ShapeDecoration(
              color:imageBgColor ?? const Color(0xFFFAFAFA),
               shape:const OvalBorder()),
           child: SvgPicture.asset(image,colorFilter: ColorFilter.mode(imageColor ??const Color(0xFF4EB7F2), BlendMode.srcIn)),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -math.pi / 2,
          child: SvgPicture.asset(AppAssets.arrowDown,colorFilter: ColorFilter.mode(imageColor ?? AppColors.kPrimary, BlendMode.srcIn),),
        )
      ],
    );
  }
}
