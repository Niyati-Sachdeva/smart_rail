import 'package:flutter/material.dart';

class TimelineStationTile
    extends StatelessWidget {

  final String stationName;

  final String arrivalTime;

  final String departureTime;

  final bool isCurrentStation;

  const TimelineStationTile({

    super.key,

    required this.stationName,

    required this.arrivalTime,

    required this.departureTime,

    required this.isCurrentStation,
  });

  @override
  Widget build(BuildContext context) {

    return Row(

      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Column(

          children: [

            Container(

              width: 16,
              height: 16,

              decoration: BoxDecoration(

                color: isCurrentStation
                    ? Colors.orange
                    : Colors.white54,

                shape: BoxShape.circle,
              ),
            ),

            Container(

              width: 2,
              height: 80,

              color: Colors.white24,
            ),
          ],
        ),

        const SizedBox(width: 20),

        Expanded(

          child: Container(

            margin:
                const EdgeInsets.only(
                    bottom: 20),

            padding:
                const EdgeInsets.all(16),

            decoration: BoxDecoration(

              color:
                  const Color(0xFF1A2238),

              borderRadius:
                  BorderRadius.circular(
                      18),
            ),

            child: Column(

              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(

                  stationName,

                  style:
                      const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(

                  "Arrival: $arrivalTime",

                  style:
                      const TextStyle(
                    color:
                        Colors.white70,
                  ),
                ),

                const SizedBox(height: 6),

                Text(

                  "Departure: $departureTime",

                  style:
                      const TextStyle(
                    color:
                        Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}