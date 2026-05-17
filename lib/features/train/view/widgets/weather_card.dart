import 'package:flutter/material.dart';

class WeatherCard
    extends StatelessWidget {

  final bool isLoading;

  final String? errorMessage;

  final dynamic weatherData;

  final String? weatherCondition;

  const WeatherCard({

    super.key,

    required this.isLoading,

    required this.errorMessage,

    required this.weatherData,

    required this.weatherCondition,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: double.infinity,

      padding:
          const EdgeInsets.all(20),

      decoration: BoxDecoration(

        color:
            const Color(0xFF1A2238),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Row(

        children: [

          Icon(

            weatherCondition == "Rain"
                ? Icons.water_drop
                : weatherCondition ==
                        "Clouds"
                    ? Icons.cloud
                    : weatherCondition ==
                            "Clear"
                        ? Icons.wb_sunny
                        : weatherCondition ==
                                "Haze"
                            ? Icons.foggy
                            : Icons.cloud,

            color: Colors.orange,

            size: 40,
          ),

          const SizedBox(width: 20),

          Column(

            crossAxisAlignment:
                CrossAxisAlignment.start,

            children: [

              if (isLoading)

                const CircularProgressIndicator(
                  color: Colors.orange,
                )

              else if (errorMessage !=
                  null)

                Text(

                  errorMessage!,

                  style:
                      const TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                )

              else ...[

                Text(

                  "${weatherData?["main"]?["temp"] ?? "--"}°C",

                  style:
                      const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(

                  weatherData?["weather"]?[0]?[
        "main"] ??
    "Unknown",
                  style:
                      const TextStyle(
                    color:
                        Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 6),

                Text(

                  weatherData?["name"] ??
"Unknown City"
,
                  style:
                      const TextStyle(
                    color:
                        Colors.white54,
                    fontSize: 14,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}