import 'dart:math';

import 'package:blood/Weather/weather1.dart';
import 'package:blood/Weather/weather2.dart';
import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  WeatherModel? weatherModel;
  List<Widget>? Hourly_cast;
  List<dynamic>? hourly_temp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Current Weather",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Icon(
                  Icons.sunny,
                  color: Colors.amber,
                  size: 64,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "${weatherModel?.currentWeather["temperature"] != null ? weatherModel?.currentWeather["temperature"] : 0}C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      print("call btn");
                      weatherModel = await WeatherApiClient().request();
                      print(weatherModel?.currentWeather);
                      hourly_temp = weatherModel?.hourly["temperature_2m"];
                      Hourly_cast = hourly_temp
                          ?.map((e) => Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("$e"),
                              ))
                          .toList();
                    },
                    child: Text("Get Data")),
                Container(
                    color: Colors.blue[900],
                    child: Column(
                      children:
                          Hourly_cast == null ? [Text("Empty")] : Hourly_cast!,
                    ))
              ],
            ),
          )),
        ));
  }
}
