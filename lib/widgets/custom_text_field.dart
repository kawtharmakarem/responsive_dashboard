import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      
      decoration: InputDecoration(
        hintStyle: AppStyles.styleRegular16.copyWith(color:const Color(0xffAAAAAA)),
        hintText: hint,
        fillColor:const Color(0xffFAFAFA),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:const BorderSide(color: Color(0xffFAFAFA))
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:const BorderSide(color: Color(0xffFAFAFA))
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide:const BorderSide(color: Color(0xffFAFAFA))
        )
      ),
    );
  }
}