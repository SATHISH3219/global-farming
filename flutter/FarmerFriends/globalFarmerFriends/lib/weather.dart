import 'dart:math';

import 'package:blood/weather1.dart';
import 'package:blood/weather2.dart';
import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  WeatherModel? weatherModel;
  List<Widget>? Hourly_cast;
  List<dynamic>? hourly_temp;
  List<dynamic>? hourly_date;
  List<Widget>? hourly_cast_date;

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
                  "${weatherModel?.currentWeather["temperature"] != null ? weatherModel?.currentWeather["temperature"] : 0}`C",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                    onPressed: () async {
                      debugPrint("call btn");
                      weatherModel = await WeatherApiClient().request();
                      print(weatherModel?.currentWeather);
                      hourly_temp = weatherModel?.hourly["temperature_2m"];
                      hourly_date = weatherModel?.hourly["time"];
                      Hourly_cast = hourly_temp
                          ?.map((e) => Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("$e"),
                              ))
                          .toList();
                      hourly_cast_date = hourly_date
                          ?.map((e) => Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("$e"),
                              ))
                          .toList();
                      setState(() {});
                    },
                    child: Text("Get Data")),
                Container(
                    color: Colors.blue[900],
                    child: Row(
                      children: [
                        Column(
                          children: hourly_cast_date == null
                              ? [Text("Empty")]
                              : hourly_cast_date!,
                        ),
                        Column(
                          children: Hourly_cast == null
                              ? [Text("Empty")]
                              : Hourly_cast!,
                        ),
                      ],
                    ))
              ],
            ),
          )),
        ));
  }
}

void setState(Null Function() param0) {}
