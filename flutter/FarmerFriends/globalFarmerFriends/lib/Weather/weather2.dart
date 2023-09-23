import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class WeatherModel {
  final currentWeather;
  final hourly;
  WeatherModel({@required this.currentWeather, @required this.hourly});

  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    final currentweather = data["current_weather"] as Map<String, dynamic>;
    final hourly = data["hourly"] as Map<String, dynamic>;
    return WeatherModel(currentWeather: currentweather, hourly: hourly);
  }
}

class CurrentWeather {
  final double temperature;
  final double windspeed;
  final double weathercode;
  final int winddirection;
  final int isDay;
  CurrentWeather(
      @required this.temperature,
      @required this.windspeed,
      @required this.weathercode,
      @required this.winddirection,
      @required this.isDay);
  factory CurrentWeather.fromJson(Map<String, dynamic> data) {
    final temperature = data["temperature"] as double;
    final windspeed = data["windspeed"] as double;
    final weathercode = data["weathercode"] as double;
    final winddirection = data["winddirection"] as int;
    final isDay = data["isDay"] as int;
    return CurrentWeather(
        temperature, windspeed, weathercode, winddirection, isDay);
  }
}

class HourlyCast {
  final List<String> time;
  final List<double> temperature;
  HourlyCast({required this.time, required this.temperature});

  factory HourlyCast.fromJson(Map<String, dynamic> data) {
    final List<String> time = data["time"] as List<String>;
    final List<double> temperture = data["temperature"] as List<double>;
    return HourlyCast(time: time, temperature: temperture);
  }
}
