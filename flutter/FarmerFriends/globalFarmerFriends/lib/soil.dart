import 'package:flutter/material.dart';

class soilanalysis extends StatelessWidget {
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(children: [
      new Container(
        width: 500.0,
        height: 250,
        margin: const EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 20.0),
        padding: new EdgeInsets.fromLTRB(20.0, 120.0, 20.0, 40.0),
        color: Colors.green,
        child: new Column(children: [
          new Text("Black Soil"),
        ]),
      ),
    ]));
  }
}
