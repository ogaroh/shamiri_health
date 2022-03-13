import 'package:flutter/material.dart';
import 'package:shamiri/src/models/category.dart';

class CustomHorizontalBar extends StatelessWidget {
  const CustomHorizontalBar({Key? key, required this.category})
      : super(key: key);

  final ChartCategory category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 400.0,
      padding: const EdgeInsets.all(5.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text("${category.title} - ${category.rating}/10"),
            ),
            Container(
              height: 10,
              width: (category.rating / 10.0) * 400,
              decoration: BoxDecoration(
                color: category.color,
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
