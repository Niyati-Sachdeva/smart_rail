import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'widgets/station_info_card.dart';
import 'widgets/route_button.dart';
import 'widgets/train_header.dart';
import 'widgets/train_status_chip.dart';
import 'package:smart_railway_app/features/weather/controller/weather_provider.dart';
import 'package:smart_railway_app/features/train/controllers/train_provider.dart';
import 'widgets/weather_card.dart';
import 'package:smart_railway_app/core/utils/train_status_helper.dart';
import 'package:smart_railway_app/core/utils/station_name_cleaner.dart';
import 'route_timeline_screen.dart';
class TrainStatusScreen extends StatefulWidget {

  final String trainNumber;

  const TrainStatusScreen({
    super.key,
    required this.trainNumber,
  });

  @override
  State<TrainStatusScreen> createState() =>
      _TrainStatusScreenState();
}

class _TrainStatusScreenState
    extends State<TrainStatusScreen> {

  @override
  void initState() {

    super.initState();

    Future.microtask(() async {

  final trainProvider =
      Provider.of<TrainProvider>(
    context,
    listen: false,
  );

  await trainProvider.getTrainStatus(
      widget.trainNumber);

  final rawStationName =

      trainProvider.trainData?[
              "body"]?[
          "stations"]?[0]?[
          "stationName"] ??

      "Delhi";

  final cleanedCityName =
      cleanCityName(
          rawStationName);

  Provider.of<WeatherProvider>(
    context,
    listen: false,
  ).getWeather(
      cleanedCityName);

    });
  }

  @override
  Widget build(BuildContext context) {

    final weatherProvider =
        Provider.of<WeatherProvider>(context);

    final trainProvider =
        Provider.of<TrainProvider>(context);
        final stations =

    trainProvider.trainData?[
            "body"]?[
        "stations"] ??
    [];

final currentStationCode =

    trainProvider.trainData?[
            "body"]?[
        "current_station"] ??
    "";

final currentIndex =
    getCurrentStationIndex(
        stations,
        currentStationCode);

    final weatherData =
        weatherProvider.weatherData;

    final errorMessage =
        weatherProvider.errorMessage;

    final weatherCondition =
        weatherData?["weather"]?[0]?["main"];

    return Scaffold(

      backgroundColor:
          const Color(0xFF0B1020),

      body: SafeArea(

        child: trainProvider.isLoading

            ? const Center(

                child:
                    CircularProgressIndicator(
                  color: Colors.orange,
                ),
              )

            : SingleChildScrollView(

                child: Padding(

                  padding:
                      const EdgeInsets.all(20),

                  child: Column(

                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [
TrainHeader(

  trainName:
"Train Number ${widget.trainNumber}",
     
                      trainNumber:
                      widget.trainNumber,),                    
//statuschip widget 
TrainStatusChip(

  status:

      trainProvider.trainData?[
              "body"]?[
          "current_station"] ??

      "Status not available",

  delayMessage:

      trainProvider.trainData?[
              "body"]?[
          "train_status_message"] ?.replaceAll(
            RegExp(r'<[^>]*>'),
            '') ??

          

      "On Time",
),
                   

                      const SizedBox(
                          height: 40),

                      // Train Progress Row
                      Row(

                        mainAxisAlignment:
                            MainAxisAlignment
                                .spaceAround,

                        children: [

                          Text(

                            trainProvider.trainData?["body"]?["stations"]?[0]?["stationname"]??"Start",

                            style: TextStyle(
                              color:
                                  Colors.white,
                              fontSize: 16,
                            ),
                          ),

                          Expanded(

                            child: Container(

                              margin:
                                  const EdgeInsets.symmetric(
                                horizontal: 12,
                              ),

                              child:
                                  const Row(

                                children: [

                                  Expanded(
                                    child:
                                        Divider(
                                      color: Colors
                                          .orange,
                                      thickness:
                                          2,
                                    ),
                                  ),

                                  Padding(

                                    padding:
                                        EdgeInsets.symmetric(
                                      horizontal:
                                          8,
                                    ),

                                    child: Icon(
                                      Icons
                                          .train,
                                      color: Colors
                                          .orange,
                                    ),
                                  ),

                                  Expanded(
                                    child:
                                        Divider(
                                      color: Colors
                                          .orange,
                                      thickness:
                                          2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Text(

                            trainProvider.trainData?["body"]?["stations"]?.last?["stationName"]??"End",

                            style: TextStyle(
                              color:
                                  Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(
                          height: 50),

                      StationInfoCard(
                        title:
                            "Current Station",
                        value:
                            trainProvider.trainData?["body"]?["current_station"]??"Unknown",
                      ),

                      const SizedBox(
                          height: 20),

                      StationInfoCard(
                        title: "Next Station",
                      value:

    currentIndex + 1 <
            stations.length

        ? stations[
                currentIndex + 1]
            ["stationName"]

        : "No Next Station",
                            
                      ),

                      const SizedBox(
                          height: 20),

                      StationInfoCard(
                        title:
                            "Estimated Arrival",
                        value:

    currentIndex + 1 <
            stations.length

        ? stations[
                currentIndex + 1]
            ["arrivalTime"]

        : "--",
                      ),

                      const SizedBox(
                          height: 20),

                      // Weather Card
WeatherCard(

  isLoading:
      weatherProvider.isLoading,

  errorMessage:
      errorMessage,

  weatherData:
      weatherData,

  weatherCondition:
      weatherCondition,
),

                      const SizedBox(
                          height:20),
                          RouteButton(

  onTap: () {

    Navigator.push(

      context,

      MaterialPageRoute(

        builder: (context) =>

            RouteTimelineScreen(

          stations:

              trainProvider.trainData?[
                      "body"]?[
                  "stations"] ??
              [],

          currentStationCode:

              trainProvider.trainData?[
                      "body"]?[
                  "current_station"] ??
              "",
        ),
      ),
    );
  },
),
                      
                    ],
                  ),
                ),
              ),
      ),
    );
  }

}