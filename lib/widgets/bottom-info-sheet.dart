import 'package:flutter/material.dart';

class BottomInfoSheet extends StatelessWidget {
  const BottomInfoSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
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
            height: 150,
            child: ListView(
              children: const <Widget>[
                ListTile(
                  title: Text('Route Name'),
                  subtitle: Text('UNGKA - LA PAZ VIA CPU - ISATU LOOP'),
                ),
                ListTile(
                  title: Text('Fare'),
                  subtitle: Text('PHP 15.00'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
