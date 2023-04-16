import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
      Polyline polyline = Polyline(
        polylineId: const PolylineId('line1'),
        color: Colors.red,
        width: 5,
        points: const [
          LatLng(10.713298, 122.534174),
          LatLng(10.716382, 122.536901),
          LatLng(10.713473, 122.539056),
        ],
        consumeTapEvents: true,
        onTap: () {
          Scaffold.of(context).showBottomSheet<void>(
            (BuildContext context) {
              return const BottomInfoSheet();
            },
          );
        },
      );

      polylines.add(polyline);
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
