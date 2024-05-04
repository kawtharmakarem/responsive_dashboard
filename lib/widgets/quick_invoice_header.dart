import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text('Quick Invoic',style: AppStyles.styleSemiBold20(context),),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xffFAFAFA),
            shape: OvalBorder()),
            child: const Icon(Icons.add,color: AppColors.kSecondary,),
        )
    
      ],
    );
  }
}