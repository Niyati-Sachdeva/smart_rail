import 'dart:convert';
import 'package:http/http.dart' as http;
class TrainApiService {
  Future<Map<String,dynamic>>
  fetchTrainStatus(String trainNumber)async{
    final now = DateTime.now();

final formattedDate =

    "${now.year}"

    "${now.month.toString().padLeft(2, '0')}";
    "${now.day.toString().padLeft(2, '0')}";
   
    final url=Uri.parse("https://indian-railway-irctc.p.rapidapi.com/api/trains/v1/train/status?departure_date=$formattedDate&isH5=true&client=web&deviceIdentifier=Mozilla%2520Firefox-138.0.0.0&train_number=$trainNumber");
    final headers={
      'Content-Type':'application/json',
      'x-rapid-api':'rapid-api-database',
       'x-rapidapi-host':
      'indian-railway-irctc.p.rapidapi.com',

  'x-rapidapi-key':
      '11cd7d3db7mshc8fb20b0bdd9fd7p170524jsnf6be2286a022',};
           
          final response = await http.get(

      url,

      headers: headers,
    );

    final data =
        jsonDecode(response.body);
print(data);
    return data;

    
  }
}