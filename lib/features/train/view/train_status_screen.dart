import 'package:flutter/material.dart';
import 'route_timeline_screen.dart';
import 'package:smart_railway_app/services/api_service.dart';
import 'package:smart_railway_app/providers/weather_provider.dart';
import 'package:provider/provider.dart';
class TrainStatusScreen extends StatefulWidget {

  const TrainStatusScreen({super.key});

  @override
  
    State<TrainStatusScreen> createState() =>
      _TrainStatusScreenState();
}class _TrainStatusScreenState
    extends State<TrainStatusScreen> {
      @override
      void initState(){
        super.initState();
        Future.microtask(() {

  Provider.of<WeatherProvider>(
    context,
    listen: false,
  ).getWeather("Delhi");
});
      }
@override
  Widget build(BuildContext context) {
    final weatherProvider =
    Provider.of<WeatherProvider>(context);


final weatherData =
    weatherProvider.weatherData;
    return Scaffold(

      backgroundColor: const Color(0xFF0B1020),

      body: SafeArea(
child:SingleChildScrollView(


        child: Padding(

          padding: const EdgeInsets.all(20),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // Back Button
              Row(

                children: [

                  IconButton(

                    onPressed: () {
                      Navigator.pop(context);
                    },

                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Train Name
              const Text(
                "Rajdhani Express",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Train Number
              const Text(
                "12951",

                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 25),

              // Status Chip
              Container(

                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),

                decoration: BoxDecoration(

                  color: Colors.orange,

                  borderRadius: BorderRadius.circular(30),
                ),

                child: const Text(
                  "Running • 18 mins late",

                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Train Progress Row
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [

                  // Left Station
                  const Text(
                    "Delhi",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  // Expanded Middle Section
                  Expanded(

                    child: Container(

                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),

                      child: const Row(

                        children: [

                          // Left Line
                          Expanded(
                            child: Divider(
                              color: Colors.orange,
                              thickness: 2,
                            ),
                          ),

                          // Train Icon
                          Padding(

                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),

                            child: Icon(
                              Icons.train,
                              color: Colors.orange,
                            ),
                          ),

                          // Right Line
                          Expanded(
                            child: Divider(
                              color: Colors.orange,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right Station
                  const Text(
                    "Kanpur",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              stationInfoCard(title:"Current Station",
              value:"Kanpur central",),
              const SizedBox(height: 20),

stationInfoCard(
  title: "Next Station",
  value: "Prayagraj Junction",
),

const SizedBox(height: 20),

stationInfoCard(
  title: "Estimated Arrival",
  value: "7:40 PM",
),
const SizedBox(height :20),
Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: const Color(0xFF1A2238),
    borderRadius: BorderRadius.circular(20),
  ),
  child:Row(
    children: [
      const Icon(Icons.cloud,
      color: Colors.orange,
      size:40,),
      const SizedBox(height:20),
     Column(

  crossAxisAlignment: CrossAxisAlignment.start,

  children: [

    Text(

      weatherData == null
          ? "Loading..."
          : "${weatherData["main"]["temp"]}°C",

      style: const TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),

    const SizedBox(height: 6),

    Text(

      weatherData == null
          ? ""
          : weatherData["weather"][0]["main"],

      style: const TextStyle(
        color: Colors.white70,
        fontSize: 16,
      ),
    ),

    const SizedBox(height: 6),

    Text(

      weatherData == null
          ? ""
          : weatherData["name"],

      style: const TextStyle(
        color: Colors.white54,
        fontSize: 14,
      ),
    ),
  ],
)
    ],
  )
),const SizedBox(height:30),

SizedBox(

  width: double.infinity,
  height: 58,

  child: ElevatedButton(

    style: ElevatedButton.styleFrom(

      backgroundColor: Colors.orange,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
    ),

    onPressed: () {

  Navigator.push(

    context,

    MaterialPageRoute(

      builder: (context) => const RouteTimelineScreen(),
    ),
  );
},

    child: const Text(
      "View Full Route",

      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),
            ],
          ),
        ),
      ),
  )  );}
      Widget stationInfoCard({
  required String title,
  required String value,
}) {

  return Container(

    width: double.infinity,

    padding: const EdgeInsets.all(20),

    decoration: BoxDecoration(

      color: const Color(0xFF1A2238),

      borderRadius: BorderRadius.circular(20),
    ),

    child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        Text(
          title,

          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          value,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}}