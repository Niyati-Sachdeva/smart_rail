import 'package:flutter/material.dart';
import 'package:smart_railway_app/services/api_service.dart';

class WeatherProvider extends ChangeNotifier {

  final ApiServices apiServices = ApiServices();

  Map<String, dynamic>? weatherData;

  bool isLoading = false;
  String?errorMessage;
    
  Future<void> getWeather(String city) async {
    try{

    

    isLoading = true;
errorMessage=null;
    notifyListeners();

    weatherData = await apiServices.fetchWeather(city);
    }catch(e){

    errorMessage="failed to load weather";    isLoading = false;
    }isLoading=false;
    notifyListeners();
  }
}

