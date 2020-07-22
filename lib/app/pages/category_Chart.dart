import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:pie_chart/pie_chart.dart';

class CategoryChart extends StatefulWidget {
  @override
  _CategoryChartState createState() => _CategoryChartState();
}

class _CategoryChartState extends State<CategoryChart> {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      dataMap: {
        "Education": 53.0,
        "Beauty & Care": 17.0,
        "Food": 18.0,
        "Chlld": 12.0,
      },
      animationDuration: Duration(milliseconds: 800),
      chartRadius: MediaQuery.of(context).size.width / 2,
      colorList: <Color>[
        Colors.lightBlue,
        Colors.yellow,
        Colors.green,
        Colors.redAccent,
      ],
      chartType: ChartType.ring,
      legendPosition: LegendPosition.bottom
    );
  }
}
