import 'package:flutter/material.dart';

import 'widgets/timeline_station_tile.dart';

class RouteTimelineScreen
    extends StatelessWidget {

  final List stations;

  final String currentStationCode;

  const RouteTimelineScreen({

    super.key,

    required this.stations,

    required this.currentStationCode,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
          const Color(0xFF0B1020),

      appBar: AppBar(

  backgroundColor:
      const Color(0xFF0B1020),

  iconTheme: const IconThemeData(
    color: Colors.white,
  ),

  title: const Text(

    "Train Route Timeline",

    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
    ),
  ),
),
      body: ListView.builder(

        padding:
            const EdgeInsets.all(20),

        itemCount: stations.length,

        itemBuilder:
            (context, index) {

          final station =
              stations[index];

          return TimelineStationTile(

            stationName:

                station["stationName"] ??
                    "Unknown",

            arrivalTime:

                station["arrivalTime"] ??
                    "--",

            departureTime:

                station["departureTime"] ??
                    "--",

            isCurrentStation:

                station["stationCode"] ==
                    currentStationCode,
          );
        },
      ),
    );
  }
}