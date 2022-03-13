import 'package:flutter/material.dart';
import 'package:shamiri/src/models/category.dart';
import 'package:shamiri/src/models/recommendation.dart';

import 'models/plan.dart';

// chart data
final List<ChartCategory> data = [
  ChartCategory(
    title: "Mental Health",
    rating: 8,
    color: Colors.pinkAccent.shade100,
  ),
  ChartCategory(
    title: "Satisfaction",
    rating: 4,
    color: Colors.amberAccent.shade400,
  ),
  ChartCategory(
    title: "Family/Social Support",
    rating: 5,
    color: Colors.lightBlueAccent,
  ),
  ChartCategory(
    title: "Work",
    rating: 6,
    color: Colors.teal,
  ),
  ChartCategory(
    title: "Sense of Purpose",
    rating: 2,
    color: Colors.purpleAccent.shade100,
  ),
];

// wellness plan data
final List<Plan> planData = [
  Plan(
    title: "Erick O.",
    subtitle: "Shamiri Licensed Counsellor",
    image: "assets/images/doctor_male_black.jpeg",
  ),
  Plan(
    title: "Veronicah N.",
    subtitle: "Shamiri Licensed Counsellor",
    image: "assets/images/doctor_female.jpeg",
  ),
  Plan(
    title: "Sunehra A.",
    subtitle: "Shamiri Licensed Counsellor",
    image: "assets/images/doctor_male.jpeg",
  ),
];

// hardcoded recommendation
Recommendation defaultRecommendation = Recommendation(
    image: "assets/images/self_care_recommendation.jpeg",
    title: "1-on-1 Session",
    subtitle: "Talk to our therapists about employee burnout?");
