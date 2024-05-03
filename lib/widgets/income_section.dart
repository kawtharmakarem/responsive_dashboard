import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposiveapp/widgets/custom_backgound_container.dart';
import 'package:resposiveapp/widgets/income_chart.dart';
import 'package:resposiveapp/widgets/income_details.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgorundContainer(
      child: Column(children: [
        IncomeSectionHeader(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IcomeChart()),
            Expanded(child: IncomeDetails())
          ],
        )
      ],),
    );
  }
}

