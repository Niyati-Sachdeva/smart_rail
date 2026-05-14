import 'package:flutter/material.dart';

class StationInfoCard
    extends StatelessWidget {

  final String title;

  final String value;

  const StationInfoCard({

    super.key,

    required this.title,

    required this.value,
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

      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,

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
              fontWeight:
                  FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }}