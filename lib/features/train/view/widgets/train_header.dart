import 'package:flutter/material.dart';
  class TrainHeader extends StatelessWidget {

  final String trainName;

  final String trainNumber;

  const TrainHeader({

    super.key,

    required this.trainName,

    required this.trainNumber,
  });

  @override
  Widget build(BuildContext context) {

    return Column(

      crossAxisAlignment:
          CrossAxisAlignment.start,

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
        Text(

          trainName,

          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        // Train Number
        Text(

          trainNumber,

          style: const TextStyle(
            color: Colors.white70,
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 25),
      ],
    );
  }
}
