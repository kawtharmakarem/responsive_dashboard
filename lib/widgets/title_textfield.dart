import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposiveapp/utils/app_styles.dart';
import 'package:resposiveapp/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.text, required this.hint});
  final String text;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: AppStyles.styleMedium16,),
       //const SizedBox(height: 5,),
        CustomTextField(hint: hint)
      ],
    );
  }
}