import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homescreen extends StatelessWidget {
  @override
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
            new Text("Weather"),
          ]),
        ),
        new Container(
          width: 500.0,
          height: 250,
          margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          padding: new EdgeInsets.fromLTRB(20.0, 120.0, 20.0, 40.0),
          color: Colors.green,
          child: new Column(children: [
            new Text("Crop Dis Detection"),
          ]),
        ),
        new Container(
          width: 500.0,
          height: 250,
          margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          padding: new EdgeInsets.fromLTRB(20.0, 120.0, 20.0, 40.0),
          color: Colors.green,
          child: new Column(children: [
            new Text("soil"),
          ]),
        ),
        new Container(
          width: 500.0,
          height: 250,
          margin: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
          padding: new EdgeInsets.fromLTRB(20.0, 120.0, 20.0, 40.0),
          color: Colors.green,
          child: new Column(children: [
            new Text("DOUBTS"),
          ]),
        ),
      ]),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                print("object");
              },
              icon: const Icon(FontAwesomeIcons.cloudSunRain),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(FontAwesomeIcons.seedling)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.solidMessage)),
            IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.magnifyingGlassChart)),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.pagelines),
            ),
          ],
        ),
      ),
    );
  }
}
