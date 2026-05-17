import 'package:flutter/material.dart';

class RecentTrainCard
    extends StatelessWidget {

  final String trainName;

  const RecentTrainCard({

    super.key,

    required this.trainName,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      margin:
          const EdgeInsets.only(
        bottom: 15,
      ),

      padding:
          const EdgeInsets.all(18),

      decoration: BoxDecoration(

        color:
            const Color(0xFF1A2238),

        borderRadius:
            BorderRadius.circular(18),
      ),

      child: Row(

        children: [

          const Icon(

            Icons.train,

            color: Colors.orange,
          ),

          const SizedBox(width: 15),

          Text(

            trainName,

            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}