import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:intl/intl.dart';
import 'package:shamiri/src/custom/default_chart.dart';
import 'package:shamiri/src/models/category.dart';
import 'package:shamiri/src/settings/settings_view.dart';
import 'package:shamiri/src/theme/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> v = [];

  final List<ChartCategory> data = [
    ChartCategory(
      title: "Mental Health",
      rating: 8,
      color: Colors.pinkAccent,
    ),
    ChartCategory(
      title: "Satisfaction",
      rating: 4,
      color: Colors.amber,
    ),
    ChartCategory(
      title: "Family/Social Support",
      rating: 5,
      color: Colors.blue,
    ),
    ChartCategory(
      title: "Work",
      rating: 6,
      color: Colors.teal,
    ),
    ChartCategory(
      title: "Sense of Purpose",
      rating: 4,
      color: Colors.purpleAccent,
    ),
  ];

  buildKey() {
    for (int i = 0; i < data.length; i++) {
      ChartCategory category = data[i];
      v.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category.title,
                  style: const TextStyle(fontSize: 10),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    buildKey();
  }

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
                height: height / 1.5,
                width: double.infinity,
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: WaveClipperTwo(
                        flip: false,
                        reverse: false,
                      ),
                      child: Container(
                        height: height / 1.5,
                        width: double.infinity,
                        color: kBrandAccent,
                      ),
                    ),
                    SafeArea(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20.0,
                              0.0,
                              10.0,
                              0.0,
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
                              0.0,
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
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                              20.0,
                              0.0,
                              10.0,
                              10.0,
                            ),
                            child: Card(
                              elevation: 2,
                              color: kDefaultWhite.withOpacity(0.8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SizedBox(
                                width: double.infinity,
                                // height: height / 5.0,
                                child: Center(
                                  child: TableCalendar(
                                    firstDay: DateTime.utc(2010, 10, 16),
                                    lastDay: DateTime.utc(2030, 3, 14),
                                    focusedDay: DateTime.now(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  20.0,
                  10.0,
                  10.0,
                  10.0,
                ),
                child: Card(
                  elevation: 2,
                  color: kDefaultWhite.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width / 3.0,
                        height: height / 3.0,
                        child: Center(
                          child: DefaultChart(data: data),
                        ),
                      ),
                      SizedBox(
                        width: width / 2.0,
                        height: height / 3.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "TODAY",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            ...v,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  20.0,
                  10.0,
                  10.0,
                  10.0,
                ),
                child: Card(
                  elevation: 2,
                  color: kDefaultWhite.withOpacity(0.8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: height / 5.0,
                    child: Center(
                      child: Text(
                        'YOUR WELLNESS'.toUpperCase(),
                        style: const TextStyle(fontSize: 12.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
