import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/size_config.dart';
import 'package:resposiveapp/widgets/detailed_income_chart.dart';
import 'package:resposiveapp/widgets/income_chart.dart';
import 'package:resposiveapp/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktop
        ? Padding(
          padding: const EdgeInsets.all(16.0),
          child: DetailedIncomeChart(),
        )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IcomeChart()),
              Expanded(flex: 2, child: IncomeDetails())
            ],
          );
  }
}
