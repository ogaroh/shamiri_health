import 'package:flutter/material.dart';
import 'package:shamiri/src/models/plan.dart';
import 'package:shamiri/src/theme/colors.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({Key? key, required this.plan}) : super(key: key);

  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200.0,
        width: 150.0,
        child: Stack(
          children: [
            Container(
              height: 200.0,
              width: 150.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(plan.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: 150.0,
                decoration: BoxDecoration(
                  color: kBrandMain.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                ),
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plan.title,
                      style: const TextStyle(
                        fontSize: 18,
                        color: kDefaultWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      plan.subtitle,
                      style: const TextStyle(
                        fontSize: 11,
                        color: kDefaultWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
