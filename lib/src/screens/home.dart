import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shamiri/src/settings/settings_view.dart';
import 'package:shamiri/src/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Icons.settings_outlined),
      //       onPressed: () {
      //         // Navigate to the settings page. If the user leaves and returns
      //         // to the app after it has been killed while running in the
      //         // background, the navigation stack is restored.
      //         Navigator.restorablePushNamed(context, SettingsView.routeName);
      //       },
      //     ),
      //   ],
      // ),
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height / 2.5,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: height / 2.5,
                      width: double.infinity,
                      color: kBrandAccent,
                    ),
                    SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20.0,
                              0.0,
                              10.0,
                              10.0,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Text(
                                  "For You",
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: kDefaultWhite,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () =>
                                      Navigator.restorablePushNamed(
                                          context, SettingsView.routeName),
                                  icon: const Icon(
                                    CarbonIcons.settings_adjust,
                                    size: 25.0,
                                    color: kDefaultWhite,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20.0,
                              0.0,
                              10.0,
                              10.0,
                            ),
                            child: Text(
                              DateFormat('MMM dd yyyy').format(DateTime.now()),
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: kDefaultWhite,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
