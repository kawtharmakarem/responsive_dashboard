import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class IcomeChart extends StatefulWidget {
  const IcomeChart({super.key});

  @override
  State<IcomeChart> createState() => _IcomeChartState();
}

class _IcomeChartState extends State<IcomeChart> {
  int activeIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        
        getChartData()),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pietouchResponse) {
         activeIndex=pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
         setState(() {
           
         });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius:activeIndex==0 ?60 : 50,
          value: 40,color: const Color(0xff208BC7)),
        PieChartSectionData(
          radius:activeIndex==1 ? 60 : 50,
          showTitle: false,
          value: 25,color: const Color(0xff4DB7F2)),
        PieChartSectionData(
          radius:activeIndex==2 ? 60 : 50,
          showTitle: false,
          value: 20,color:const Color(0xff064060) ),
        PieChartSectionData(
          radius:activeIndex==3 ? 60 : 50,
          showTitle: false,
          value: 22,color: const Color(0xffE2DECD))
      ]
    );
  }
}