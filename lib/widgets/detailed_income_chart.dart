import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resposiveapp/utils/app_colors.dart';
import 'package:resposiveapp/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==0 ? 1.5:null,
              radius: activeIndex == 0 ? 50 : 40,
              titleStyle:
                  AppStyles.styleRegular16(context).copyWith(color:activeIndex==0 ? AppColors.kPrimary : Colors.white),
              title:activeIndex==0 ?'Device Service': "40%",
              value: 40,
              color: const Color(0xff208BC7)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==1 ?1.5:null,
              radius: activeIndex == 1 ? 50 : 40,
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==1 ? AppColors.kPrimary : Colors.white),
              title:activeIndex==1 ? "Design Service" :"25%",
              value: 25,
              color: const Color(0xff4DB7F2)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==2 ? 1.5 :null,
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==2 ? AppColors.kPrimary: Colors.white),
              radius: activeIndex == 2 ? 50 : 40,
              title:activeIndex==2? "Product Services": "20%",
              value: 20,
              color: const Color(0xff064060)),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex==3 ? 1.5 :null,
              radius: activeIndex == 3 ? 50 : 40,
              titleStyle: AppStyles.styleMedium16(context).copyWith(color:activeIndex==3 ? AppColors.kPrimary : Colors.white),
              title:activeIndex==3 ? "Other" :"22%",
              value: 22,
              color: const Color(0xffE2DECD))
        ]);
  }
}
