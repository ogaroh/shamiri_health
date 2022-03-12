import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

/// A service that stores and retrieves user settings.
///
/// By default, this class does not persist user settings. If you'd like to
/// persist the user settings locally, use the shared_preferences package. If
/// you'd like to store settings on a web server, use the http package.
class SettingsService {
  // Future<ThemeMode> themeMode() async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   String themeMode = (sharedPreferences.getString("themeMode") ?? "");
  //   // print("saved theme $themeMode");
  //   if (themeMode == "") {
  //     return ThemeMode.system;
  //     // return ThemeMode.light;
  //   } else if (themeMode == "ThemeMode.dark") {
  //     return ThemeMode.dark;
  //   } else {
  //     return ThemeMode.light;
  //   }
  // }

  // /// Persists the user's preferred ThemeMode to local or remote storage.
  // Future<void> updateThemeMode(ThemeMode theme) async {
  //   // Use the shared_preferences package to persist settings locally or the
  //   // http package to persist settings over the network.
  //   // print(theme.toString());
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  //   sharedPreferences.setString("themeMode", theme.toString());
  // }

  /// Loads the User's preferred ThemeMode from local or remote storage.
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  /// Persists the user's preferred ThemeMode to local or remote storage.
  Future<void> updateThemeMode(ThemeMode theme) async {
    // Use the shared_preferences package to persist settings locally or the
    // http package to persist settings over the network.
  }
}
