import 'package:flutter/material.dart';
import 'package:shamiri/src/models/recommendation.dart';
import 'package:shamiri/src/theme/colors.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({Key? key, required this.recommendation})
      : super(key: key);

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 250.0,
        width: 400.0,
        child: Stack(
          children: [
            Container(
              height: 250.0,
              width: 400.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage(recommendation.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                width: 400.0,
                decoration: BoxDecoration(
                  color: kBrandMain.withOpacity(0.9),
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
                      recommendation.title,
                      style: const TextStyle(
                        fontSize: 18,
                        color: kDefaultWhite,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      recommendation.subtitle,
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
