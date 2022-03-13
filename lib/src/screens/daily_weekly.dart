import 'package:flutter/material.dart';

class DailyWeeklyScreen extends StatefulWidget {
  const DailyWeeklyScreen({Key? key, required this.selectedDate})
      : super(key: key);

  final DateTime selectedDate;

  @override
  State<DailyWeeklyScreen> createState() => _DailyWeeklyScreenState();
}

class _DailyWeeklyScreenState extends State<DailyWeeklyScreen> {
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text("Daily/Weekly"),
        ));
  }
}
