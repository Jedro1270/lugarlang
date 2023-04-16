import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LugarLangRoute {
  String name;
  double fare;
  List<LatLng> points;
  Color color;

  LugarLangRoute({
    required this.name,
    required this.fare,
    required this.points,
    required this.color,
  });
}
