import 'dart:convert';
import 'package:http/http.dart' as http;
class ApiServices{
  Future<Map<String,dynamic>> fetchWeather(
    String city,
  )async{
    final url=Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=11f8b06b428023e062def881c6680bd8&units=metric',

    );
    
    final response=await http.get(url);
   
    final data=jsonDecode(response.body);
    
    return data;
  }
}