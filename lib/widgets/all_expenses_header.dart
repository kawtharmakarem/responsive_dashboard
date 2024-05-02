import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_styles.dart';

import 'range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('All Expenses',style: AppStyles.styleSemiBold20),
        Expanded(child: SizedBox()),
        RangeOptions()
      ],
    );
  }
}

