import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Weather/weather.dart';
import 'plant.dart';
import 'chatbot.dart';
import 'soil.dart';
import 'yield.dart';
import 'LoginScreen.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<MyHomePage> {
  int selectedPage = 0;
  final _pageOptions = [weather(), plant(), chatbot(), yield(), soilanalysis()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: FontAwesomeIcons.cloudSunRain, title: 'weather'),
          TabItem(icon: FontAwesomeIcons.seedling, title: 'plant'),
          TabItem(icon: FontAwesomeIcons.solidMessage, title: 'chatbot'),
          TabItem(icon: FontAwesomeIcons.pagelines, title: 'Yield'),
          TabItem(
              icon: FontAwesomeIcons.magnifyingGlassChart,
              title: 'SoilAnalysis'),
        ],
        initialActiveIndex: 0, //optional, default as 0
        onTap: (int i) {
          setState(() {
            selectedPage = i;
          });
        },
      ),
    );
  }
}
