import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lugarlang/assets/routes.dart';
import 'package:lugarlang/classes/route.dart';
import 'package:lugarlang/widgets/bottom-info-sheet.dart';

class LugarLangMap extends StatefulWidget {
  final void Function(GoogleMapController)? onMapCreated;
  final LatLng center;

  const LugarLangMap({
    super.key,
    required this.onMapCreated,
    required this.center,
  });

  @override
  State<LugarLangMap> createState() => _LugarLangMapState();
}

class _LugarLangMapState extends State<LugarLangMap> {
  final Set<Polyline> polylines = {};

  void _initializeRoutes() {
    setState(() {
      for (LugarLangRoute route in routes) {
        Polyline polyline = Polyline(
          polylineId: PolylineId(route.name),
          color: route.color,
          width: 3,
          points: route.points,
          consumeTapEvents: true,
          onTap: () {
            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return BottomInfoSheet(route: route);
              },
            );
          },
        );

        polylines.add(polyline);
      }
    });
  }

  @override
  void initState() {
    _initializeRoutes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      polylines: polylines,
      onMapCreated: widget.onMapCreated,
      initialCameraPosition: CameraPosition(
        target: widget.center,
        zoom: 11.0,
      ),
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
