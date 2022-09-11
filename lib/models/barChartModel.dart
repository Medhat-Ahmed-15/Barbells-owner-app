import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String day;
  int attendences;
  final charts.Color color;

  BarChartModel({
    this.color,
    this.attendences,
    this.day,
  });
}
