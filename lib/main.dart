import 'package:first/screens/screen.history.dart';
import 'package:first/screens/screen.home.dart';
import 'package:first/screens/screen.map.dart';
import 'package:first/screens/screen.mostreported.dart';
import 'package:first/screens/screen.report.dart';
import 'package:first/screens/screen.test.dart';
import 'package:first/services/google-map.service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final GoogleMapsFlutterPlatform mapsImplementation =
      GoogleMapsFlutterPlatform.instance;
  if (mapsImplementation is GoogleMapsFlutterAndroid) {
    mapsImplementation.useAndroidViewSurface = true;
    initializeMapRenderer();
  }

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/screen.home',
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
