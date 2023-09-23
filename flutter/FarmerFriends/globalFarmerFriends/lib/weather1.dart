import 'dart:convert';

import 'package:blood/weather.dart';
import 'package:dio/dio.dart';
import 'weather2.dart';

class WeatherApiClient {
  Future<WeatherModel> request() async {
    String url =
        "https://api.open-meteo.com/v1/forecast?latitude=52.52&longitude=13.41&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m";
    Response response = await Dio().get(url);
    final parseData = jsonDecode(response.toString());
    final weather = WeatherModel.fromJson(parseData);
    return weather;
  }
}
