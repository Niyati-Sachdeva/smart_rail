import 'package:flutter/material.dart';

class RouteTimelineScreen extends StatelessWidget {

  const RouteTimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFF0B1020),

      body: SafeArea(

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

                  const SizedBox(width: 10),

                  const Text(
                    "Train Route",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height:40),
              timelineTile( stationName: "Delhi",

  status: "Reached",

  icon: Icons.radio_button_checked,

  iconColor: Colors.orange),
  timelineTile(

  stationName: "Ghaziabad",

  status: "Reached",

  icon: Icons.radio_button_checked,

  iconColor: Colors.orange,
),
timelineTile(

  stationName: "Kanpur Central",

  status: "Current Station",

  icon: Icons.train,

  iconColor: Colors.orange,
),
timelineTile(

  stationName: "Prayagraj",

  status: "Upcoming",

  icon: Icons.radio_button_unchecked,

  iconColor: Colors.white54,
),
            ],
          ),
        ),
      ),
    );}
    Widget timelineTile({
      required String stationName,
      required String status,
      required IconData icon,
      required Color iconColor, 
    }){
      return Container(
        margin: EdgeInsets.only(bottom:25),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
            Icon(icon,
            color:iconColor,
            size:28,
          ),
          Container(
            width:2,
            height: 50,
            color:Colors.white24,

          ),
        ],),
        const SizedBox(width:20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(stationName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            const SizedBox(height:5),
            Text(
              status,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
          ],),],),
      );
    }}
  
