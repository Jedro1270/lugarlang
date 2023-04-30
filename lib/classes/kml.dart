import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:lugarlang/classes/route.dart';
import 'package:lugarlang/widgets/bottom-info-sheet.dart';
import 'package:xml/xml.dart';

/// used packages
///   xml
///   google_maps_flutter
///
/// Documentation oficial:
/// https://developers.google.com/kml/documentation/altitudemode#clamptoseafloor
/// https://developers.google.com/kml/documentation/kmlreference?hl=en

List<Color> routeColors = [
  Colors.redAccent,
  Colors.blueAccent,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.lime,
  Colors.indigo,
  Colors.amber,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.black,
];

class KML {
  static Future<Map<PolylineId, Polyline>> loadAllKML(
      BuildContext context) async {
    final newPolylines = Map<PolylineId, Polyline>.from({});

    for (int i = 0; i < 3; i++) {
      final additionalPolylines = await loadKML(i, context);

      newPolylines.addAll(additionalPolylines);
    }

    return newPolylines;
  }

  static Future<Map<PolylineId, Polyline>> loadKML(
      int routeNumber, BuildContext context) async {
    print("============================LOAD KML==============================");
    final newPolylines = Map<PolylineId, Polyline>.from({});
    final file = await getJson(routeNumber);
    if (file == null) {
      return newPolylines;
    }

    final data = await parseKML(file).catchError((error) {
      print(error);
      return newPolylines;
    });

    if (data != null) {
      for (int i = 0; i < data.length; i++) {
        var element = data[i];

        PolylineId polylineId = PolylineId(element.name);

        final newPolyline = Polyline(
          polylineId: polylineId,
          points: element.coordinates,
          jointType: JointType.round,
          width: 2,
          color: routeColors[routeNumber + i],
          consumeTapEvents: true,
          onTap: () {
            LugarLangRoute route = LugarLangRoute(
              name: element.name,
              fare: 10,
              points: element.coordinates,
              color: routeColors[routeNumber + i],
            );

            Scaffold.of(context).showBottomSheet<void>(
              (BuildContext context) {
                return BottomInfoSheet(route: route);
              },
            );
          },
        );
        newPolylines[polylineId] = newPolyline;
      }
      return newPolylines;
    } else {
      return newPolylines;
    }
  }

  static Future<String>? getJson(int routeNumber) {
    switch (routeNumber) {
      case 0:
        return rootBundle
            .loadString('assets/Iloilo City LPTRP - ROUTE 01 to ROUTE 08.kml');
      case 1:
        return rootBundle
            .loadString('assets/Iloilo City LPTRP - ROUTE 09 to ROUTE 16.kml');
      case 2:
        return rootBundle
            .loadString('assets/Iloilo City LPTRP - ROUTE 17 to ROUTE 24.kml');
      default:
        return null;
    }
  }

  static Future<List<PlacemarkKML>> parseKML(String data) async {
    XmlElement doc = XmlDocument.parse(data).rootElement;
    if (doc.name.toString() != 'kml') {
      throw ("ERROR: the file is not a KML compatible file");
    }

    List<PlacemarkKML> resp = [];
    Iterable<XmlElement> elements = doc.findAllElements("Placemark");
    int cont = 0;
    for (XmlElement element in elements) {
      cont++;
      String? name = element.getElement('name')?.text;
      String? altitudeMode = element
          .getElement('LookAt')
          ?.getElement('gx:altitudeMode')
          ?.text
          .toUpperCase()
          .trim();

      List<LatLng> points = [];
      final coordinates =
          element.findAllElements('coordinates').first.text.trim().split(' ');
      for (var element in coordinates) {
        if (element.isNotEmpty) {
          final dat = element.split(",");

          double lat = double.parse(dat[1].toString());
          double lng = double.parse(dat[0].toString());

          points.add(LatLng(lat, lng));
        }
      }

      resp.add(PlacemarkKML(
        id: "Placemark$cont",
        name: name ?? "",
        altitudeMode: altitudeMode ?? "",
        coordinates: points,
      ));
    }
    return resp;
  }
}

class PlacemarkKML {
  String id;
  String name;
  String altitudeMode;
  List<LatLng> coordinates;
  bool valid;
  PlacemarkKML(
      {required this.id,
      required this.name,
      required this.altitudeMode,
      required this.coordinates,
      this.valid = true});
}
