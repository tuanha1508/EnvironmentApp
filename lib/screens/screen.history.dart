import 'package:circular_chart_flutter/circular_chart_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({super.key});

  final indexChart = <String, double>{
    'Your Progress': 8.8,
  };

  final indexColorlist = <Color>[
    const Color.fromRGBO(244, 188, 231, 1),
  ];

  final GlobalKey<AnimatedCircularChartState> _chartKey =
      GlobalKey<AnimatedCircularChartState>();
  final List<CircularStackEntry> data = <CircularStackEntry>[
    const CircularStackEntry(
      <CircularSegmentEntry>[
        CircularSegmentEntry(88, Color.fromRGBO(244, 188, 231, 1),
            rankKey: 'Your Progress'),
        CircularSegmentEntry(12, Colors.white30, rankKey: 'Total'),
      ],
      rankKey: 'Progress',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(CupertinoIcons.arrowtriangle_left_fill),
                    label: const Text(''),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'Your Progress',
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w300,
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  height: 210,
                  width: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color.fromRGBO(28, 28, 28, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedCircularChart(
                        key: _chartKey,
                        size: const Size(200, 200),
                        initialChartData: data,
                        chartType: CircularChartType.Radial,
                        edgeStyle: SegmentEdgeStyle.round,
                        percentageValues: true,
                        holeLabel: '88\n%',
                        labelStyle: GoogleFonts.nunito(
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                          color: Colors.white,
                        ),
                        duration: const Duration(milliseconds: 450),
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LegendBox(
                              Color.fromRGBO(244, 188, 231, 1), 'Contributed'),
                          LegendBox(Colors.white30, 'Total')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonCard(Icons.history_edu_rounded, 'History',
                      Color.fromRGBO(244, 188, 231, 0.9)),
                  ButtonCard(
                      Icons.app_registration_rounded, '???', Colors.white70),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LegendBox extends StatelessWidget {
  const LegendBox(this.indexColor, this.indexText, {super.key});
  final Color indexColor;
  final String indexText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 5,
          width: 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: indexColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(
            ' $indexText',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}

class ButtonCard extends StatelessWidget {
  const ButtonCard(this.indexIcon, this.indexFeature, this.indexColor,
      {super.key});
  // final String indexScreen;
  final IconData indexIcon;
  final String indexFeature;
  final Color indexColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(1, 1, 1, 1),
      ),
      child: Column(
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: indexColor,
            ),
            child: Icon(
              indexIcon,
              size: 45,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 7),
            child: Text(
              indexFeature,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
