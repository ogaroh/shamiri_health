import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:shamiri/src/constants.dart';
import 'package:shamiri/src/custom/bubble.dart';
import 'package:shamiri/src/custom/default_chart.dart';
import 'package:shamiri/src/theme/colors.dart';

class DailyWeeklyScreen extends StatefulWidget {
  const DailyWeeklyScreen({Key? key, required this.selectedDate})
      : super(key: key);

  final DateTime selectedDate;

  @override
  State<DailyWeeklyScreen> createState() => _DailyWeeklyScreenState();
}

class _DailyWeeklyScreenState extends State<DailyWeeklyScreen>
    with SingleTickerProviderStateMixin {
  String title = 'Daily/Weekly Analytics';
  late PageController _pageController;

  Color left = kBrandMain;
  Color right = kDefaultWhite;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    title = DateFormat('EEE MMMM dd, yyyy').format(widget.selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: _buildMenuBar(context),
          ),
          Expanded(
            flex: 2,
            child: PageView(
              controller: _pageController,
              physics: const ClampingScrollPhysics(),
              onPageChanged: (int i) {
                FocusScope.of(context).requestFocus(FocusNode());
                if (i == 0) {
                  if (mounted) {
                    setState(() {
                      right = kDefaultWhite;
                      left = kBrandMain;
                    });
                  }
                } else if (i == 1) {
                  if (mounted) {
                    setState(() {
                      right = kBrandMain;
                      left = kDefaultWhite;
                    });
                  }
                }
              },
              children: <Widget>[
                // TODO: daily UI
                ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: Column(
                    children: [
                      SizedBox(
                        width: width,
                        height: height / 3.0,
                        child: Center(
                          child: DefaultChart(data: data),
                        ),
                      ),
                    ],
                  ),
                ),
                // TODO: weekly  UI

                ConstrainedBox(
                  constraints: const BoxConstraints.expand(),
                  child: const Center(
                    child: Text(
                      "Weekly",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuBar(BuildContext context) {
    return Container(
      width: 300.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: kBrandMain.withOpacity(0.6),
        borderRadius: const BorderRadius.all(Radius.circular(25.0)),
      ),
      child: CustomPaint(
        painter: BubbleIndicatorPainter(pageController: _pageController),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  _pageController.animateToPage(
                    0,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.decelerate,
                  );
                  if (mounted) {
                    setState(() {
                      title = DateFormat('EEE MMMM dd, yyyy')
                          .format(widget.selectedDate);
                    });
                  }
                },
                child: Text(
                  'Daily',
                  style: TextStyle(
                    color: left,
                    fontSize: 16.0,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            //Container(height: 33.0, width: 1.0, color: Colors.white),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  _pageController.animateToPage(
                    1,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.decelerate,
                  );
                },
                child: Text(
                  'Weekly',
                  style: TextStyle(
                    color: right,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.raleway().fontFamily,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
