import 'package:flutter/material.dart';

class TrainStatusChip
    extends StatelessWidget {

  final String status;

  final String delayMessage;

  const TrainStatusChip({

    super.key,

    required this.status,

    required this.delayMessage,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      padding:
          const EdgeInsets.symmetric(

        horizontal: 18,
        vertical: 12,
      ),

      decoration: BoxDecoration(

        color: Colors.orange,

        borderRadius:
            BorderRadius.circular(30),
      ),

      child: Column(

        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Text(

            status,

            style: const TextStyle(
              color: Colors.black,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(

            delayMessage,

            style: const TextStyle(
              color: Colors.redAccent,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}