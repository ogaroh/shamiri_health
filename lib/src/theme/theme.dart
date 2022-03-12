import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class CustomTheme {
  const CustomTheme();

  static const Color loginGradientStart = kBrandLight;
  static const Color loginGradientEnd = kBrandMain;
  static const Color white = kDefaultWhite;
  static const Color black = kDefaultWhite;

  static const LinearGradient primaryGradient = LinearGradient(
    colors: <Color>[loginGradientStart, loginGradientEnd],
    stops: <double>[0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}

///
/// Light theme data
///

ThemeData kLightTheme = ThemeData(
  primarySwatch: customPrimarySwatch,
  fontFamily: GoogleFonts.raleway().fontFamily,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: kDefaultWhite,
    titleTextStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: kBrandMain,
    ),
    centerTitle: true,
    iconTheme: IconThemeData(
      color: kBrandMain,
      size: 25.0,
    ),
    actionsIconTheme: IconThemeData(
      color: kBrandMain,
      size: 25.0,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kDefaultWhite,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
      color: kBrandAccent,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 13.0,
      color: kLightGrey,
    ),
    elevation: 2.0,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    type: BottomNavigationBarType.fixed,
  ),
);

///
/// Dark theme data
///

ThemeData kDarkTheme = ThemeData(
  primarySwatch: customPrimarySwatch,
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.raleway().fontFamily,
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: kDarkestGrey,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w600,
      color: kBrandAccent,
    ),
    iconTheme: IconThemeData(
      color: kBrandAccent,
      size: 25.0,
    ),
    actionsIconTheme: IconThemeData(
      color: kBrandAccent,
      size: 25.0,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: kDarkestGrey,
    selectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
      color: kBrandAccent,
    ),
    unselectedLabelStyle: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
      color: kBrandAccent,
    ),
    unselectedIconTheme: IconThemeData(color: kDefaultWhite),
    selectedIconTheme: IconThemeData(color: kBrandAccent),
    elevation: 2.0,
    showUnselectedLabels: false,
    showSelectedLabels: false,
    type: BottomNavigationBarType.fixed,
  ),
);
