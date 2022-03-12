import 'package:flutter/material.dart';
import 'package:shamiri/src/models/category.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DefaultChart extends StatelessWidget {
  const DefaultChart({Key? key, required this.data}) : super(key: key);
  final List<ChartCategory> data;

  @override
  Widget build(BuildContext context) {
    List<charts.Series<ChartCategory, String>> series = [
      charts.Series(
        id: "Categories",
        data: data,
        domainFn: (ChartCategory series, _) => series.title,
        measureFn: (ChartCategory series, _) => series.rating,
        colorFn: (ChartCategory series, _) =>
            charts.ColorUtil.fromDartColor(series.color),
        labelAccessorFn: (ChartCategory series, _) =>
            '${series.title}: ${series.rating}',
      ),
    ];
    return charts.PieChart(
      series,
      animate: true,
    );
  }
}
