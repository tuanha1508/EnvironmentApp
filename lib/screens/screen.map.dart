import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_routes/google_maps_routes.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  late LatLng _initialPosition;
  final Set<Marker> markers = {};
  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  final LocationAccuracy accuracy = LocationAccuracy.high;
  void _getUserLocation() async {
    var position = await GeolocatorPlatform.instance.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: accuracy));
    setState(() {
      _initialPosition = LatLng(position.latitude, position.longitude);
    });
  }

  List<LatLng> points = [
    const LatLng(16.0501368, 108.2351368),
    const LatLng(16.0862461, 108.2338082),
  ];
  DistanceCalculator distanceCalculator = new DistanceCalculator();

  MapsRoutes route = MapsRoutes();
  void _draw() async {
    await route.drawRoute(
        points, 'abc', Colors.black, "AIzaSyBoU1FxBm9sb1TEk7N0Z8WDiZ7fzo9YW9g");
    print('abc ${route.routes}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition:
            CameraPosition(target: _initialPosition, zoom: 11.0),
        markers: {
          const Marker(
              markerId: MarkerId('Dong Nau Cafe'),
              position: LatLng(16.0501368, 108.2351368)),
          const Marker(
              markerId: MarkerId('Nha Tuan'),
              position: LatLng(16.0862461, 108.2338082)),
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        polylines: route.routes,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _draw,
        label: const Text('To the Dong Nau cafe!'),
        icon: const Icon(Icons.directions_boat),
      ),
    );
  }
}
