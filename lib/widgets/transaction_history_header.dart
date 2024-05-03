import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      const Text('Transaction History',style: AppStyles.styleSemiBold20,),
      Text('see all',style: AppStyles.styleMedium16.copyWith(color: AppColors.kSecondary),)
    ],);
  }
}