import 'package:flutter/material.dart';

class RouteButton
    extends StatelessWidget {

  final VoidCallback onTap;

  const RouteButton({

    super.key,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      width: double.infinity,

      height: 55,

      child: ElevatedButton(

        onPressed: onTap,

        style:
            ElevatedButton.styleFrom(

          backgroundColor:
              Colors.orange,

          shape:
              RoundedRectangleBorder(

            borderRadius:
                BorderRadius.circular(
                    18),
          ),
        ),

        child: const Text(

          "View Full Route",

          style: TextStyle(

            color: Colors.black,

            fontSize: 18,

            fontWeight:
                FontWeight.bold,
          ),
        ),
      ),
    );
  }
}