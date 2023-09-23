import 'package:blood/Weather/weather1.dart';
import 'package:blood/Weather/weather2.dart';
import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  WeatherModel? weatherModel;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () async {
                  weatherModel = await WeatherApiClient().request();
                  print(weatherModel?.currentWeather);
                },
                child: Text("Get Data"))
          ],
        ),
      )),
    );
  }
}
