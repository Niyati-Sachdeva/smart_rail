import 'package:flutter/material.dart';

class QuickAccessCard
    extends StatelessWidget {

  final IconData icon;

  final String title;

  const QuickAccessCard({

    super.key,

    required this.icon,

    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Container(

      width: 100,
      height: 100,

      decoration: BoxDecoration(

        color:
            const Color(0xFF1A2238),

        borderRadius:
            BorderRadius.circular(20),
      ),

      child: Column(

        mainAxisAlignment:
            MainAxisAlignment.center,

        children: [

          Icon(

            icon,

            color: Colors.orange,

            size: 32,
          ),

          const SizedBox(height: 10),

          Text(

            title,

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