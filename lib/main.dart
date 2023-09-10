// ignore_for_file: unused_import

import 'package:first/screens/screen.history.dart';
import 'package:first/screens/screen.home.dart';
import 'package:first/screens/screen.map.dart';
import 'package:first/screens/screen.mostreported.dart';
import 'package:first/screens/screen.report.dart';
import 'package:first/screens/screen.test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void enterFullScreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

void exitFullScreen() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: SystemUiOverlay.values);
}

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/screen.test',
      routes: {
        '/screen.test': (context) => const TestScreen(),
        '/screen.home': (context) => const Homescreenb(),
        '/screen.report': (context) => const ReportScreen(),
        '/screen.map': (context) => const MapScreen(),
        '/screen.history': (context) => HistoryScreen(),
        '/screen.mostreported': (context) => const MostReportedScreen(),
      },
    ),
  );
}
