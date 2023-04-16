import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lugarlang/widgets/map.dart';
import 'package:geolocator/geolocator.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  LatLng currentPosition = const LatLng(10.7314, 122.5469);
  LatLng center = const LatLng(10.7314, 122.5469);

  @override
  void initState() {
    _getCurrentLocation();
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _getCurrentLocation() async {
    await Geolocator.requestPermission();
    await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
      forceAndroidLocationManager: true,
    ).then((position) {
      setState(() {
        currentPosition = LatLng(position.latitude, position.longitude);
        center = currentPosition;
      });
    }).catchError((e) {
      print(e);
    });
  }

  void navigateToCurrentLocation() {
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(
            currentPosition.latitude,
            currentPosition.longitude,
          ),
          zoom: 19.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lugarlang',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 2,
      ),
      body: LugarLangMap(
        onMapCreated: _onMapCreated,
        center: center,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('My Location'),
        onPressed: navigateToCurrentLocation,
        icon: const Icon(Icons.my_location),
      ),
    );
  }
}
