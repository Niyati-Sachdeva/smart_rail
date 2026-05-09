import 'package:flutter/material.dart';
import 'package:smart_railway_app/services/api_service.dart';

class WeatherProvider extends ChangeNotifier {

  final ApiServices apiServices = ApiServices();

  Map<String, dynamic>? weatherData;

  bool isLoading = false;
    // ADD HERE
  Future<void> getWeather(String city) async {
    print("provider called");

    isLoading = true;

    notifyListeners();

    weatherData = await apiServices.fetchWeather(city);

    isLoading = false;

    notifyListeners();
  }
}

