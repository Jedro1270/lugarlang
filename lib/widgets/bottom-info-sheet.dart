import 'package:flutter/material.dart';
import 'package:lugarlang/classes/route.dart';

class BottomInfoSheet extends StatelessWidget {
  final LugarLangRoute route;

  const BottomInfoSheet({
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, -1.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 4.0,
            width: 30.0,
            margin: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
          SizedBox(
            height: 75,
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: const Text('Route Name'),
                  subtitle: Text(route.name),
                ),
                // ListTile(
                //   title: const Text('Fare'),
                //   subtitle: Text('₱ ${route.fare}'),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
