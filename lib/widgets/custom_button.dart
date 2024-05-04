import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor, required this.text});
 final Color? backgroundColor;
 final Color? textColor;
 final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor ?? AppColors.kSecondary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          )
        ),
        onPressed: (){},child: Text(text,style: AppStyles.styleSemiBold18(context).copyWith(color:textColor ?? Colors.white),),),
    );
  }
}