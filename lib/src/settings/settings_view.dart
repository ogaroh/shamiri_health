import 'package:flutter/material.dart';

import 'settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  const SettingsView({Key? key, required this.controller}) : super(key: key);

  static const routeName = '/settings';

  final SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              controller.themeMode == ThemeMode.dark
                  ? Icons.dark_mode_outlined
                  : controller.themeMode == ThemeMode.light
                      ? Icons.light_mode_outlined
                      : Icons.phone_android_outlined,
              size: 20.0,
            ),
            title: const Text(
              "Application Theme",
              style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              "Change theme preference",
              style: TextStyle(fontSize: 12.0),
            ),
            trailing: DropdownButtonHideUnderline(
              child: DropdownButton<ThemeMode>(
                // Read the selected themeMode from the controller
                value: controller.themeMode,
                // Call the updateThemeMode method any time the user selects a theme.
                onChanged: controller.updateThemeMode,
                items: const [
                  DropdownMenuItem<ThemeMode>(
                    value: ThemeMode.system,
                    child: Text(
                      'System Default',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.light,
                    child: Text(
                      'Light',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  ),
                  DropdownMenuItem(
                    value: ThemeMode.dark,
                    child: Text(
                      'Dark',
                      style: TextStyle(fontSize: 13.0),
                    ),
                  )
                ],
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
