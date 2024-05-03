import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
 final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:const Duration(milliseconds: 300),
      height: 8,
      width:isActive? 32 : 8,
      decoration: ShapeDecoration(
        color:isActive? AppColors.kSecondary: const Color(0xffE7E7E7),
        shape: RoundedRectangleBorder(
          
          borderRadius: BorderRadius.circular(12)
        )),
    );
  }
}