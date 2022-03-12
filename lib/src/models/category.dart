import 'package:charts_flutter/flutter.dart' as charts;

class ChartCategory {
  final String title;
  final int rating;
  final charts.Color color;

  ChartCategory({
    required this.title,
    required this.rating,
    required this.color,
  });
}
