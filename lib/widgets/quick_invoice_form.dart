import 'package:flutter/material.dart';
import 'package:resposiveapp/widgets/custom_button.dart';
import 'package:resposiveapp/widgets/title_textfield.dart';

import '../utils/app_colors.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(text: 'Customer name', hint: 'Type Customer Name')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(text: 'Customer email', hint: 'Type email'))
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(child: TitleTextField(text: 'Item name', hint: 'Type customer name')),
            SizedBox(width: 16,),
            Expanded(child: TitleTextField(text: 'Item mount', hint: 'Item mount'))
          ],
        ),
        Row(
          children: [
            Expanded(child: CustomButton(backgroundColor: Colors.white,textColor: AppColors.kSecondary,text: 'AddMoreDetails',)),
            SizedBox(width: 16,),
            Expanded(child: CustomButton(text: 'SendMoney',))
          ],
        )
      ],
    );
  }
}