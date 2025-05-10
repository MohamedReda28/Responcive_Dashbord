import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../cors/utils/app_color.dart';

class Income_Chart extends StatefulWidget {
  const Income_Chart({super.key});

  @override
  State<Income_Chart> createState() => _Income_ChartState();
}

class _Income_ChartState extends State<Income_Chart> {
  int sectionIndex=-1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
        child: PieChart(getChartdata()));
  }

  PieChartData getChartdata()
  {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0,PieTouchResponse){
          sectionIndex= PieTouchResponse?.touchedSection?.touchedSectionIndex??-1;
          setState(() {

          });
        }
      ),
      sectionsSpace: 0,
        sections: [
          PieChartSectionData(
              radius:sectionIndex ==0 ?50:40,
              showTitle: false,value: 40,color: AppColors.primary),
          PieChartSectionData(
              radius:sectionIndex ==1 ?50:40,
                showTitle: false,value: 25,color: AppColors.secondary),
          PieChartSectionData(
              radius:sectionIndex ==2 ?50:40,
              showTitle: false,value: 20,color: AppColors.success),
          PieChartSectionData(
              radius:sectionIndex ==3 ?50:40,
              showTitle: false,value: 22,color: AppColors.cardBackground),
        ]
    );
  }
}