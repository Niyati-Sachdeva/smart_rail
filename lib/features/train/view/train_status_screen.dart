import 'package:flutter/material.dart';

class TrainStatusScreen extends StatelessWidget {

  const TrainStatusScreen({super.key});

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
                ],
              ),

              const SizedBox(height: 20),

              // Train Name
              const Text(
                "Rajdhani Express",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              // Train Number
              const Text(
                "12951",

                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 25),

              // Status Chip
              Container(

                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 12,
                ),

                decoration: BoxDecoration(

                  color: Colors.orange,

                  borderRadius: BorderRadius.circular(30),
                ),

                child: const Text(
                  "Running • 18 mins late",

                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Train Progress Row
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [

                  // Left Station
                  const Text(
                    "Delhi",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  // Expanded Middle Section
                  Expanded(

                    child: Container(

                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ),

                      child: const Row(

                        children: [

                          // Left Line
                          Expanded(
                            child: Divider(
                              color: Colors.orange,
                              thickness: 2,
                            ),
                          ),

                          // Train Icon
                          Padding(

                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                            ),

                            child: Icon(
                              Icons.train,
                              color: Colors.orange,
                            ),
                          ),

                          // Right Line
                          Expanded(
                            child: Divider(
                              color: Colors.orange,
                              thickness: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Right Station
                  const Text(
                    "Kanpur",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              stationInfoCard(title:"Current Station",
              value:"Kanpur central",),
              const SizedBox(height: 20),

stationInfoCard(
  title: "Next Station",
  value: "Prayagraj Junction",
),

const SizedBox(height: 20),

stationInfoCard(
  title: "Estimated Arrival",
  value: "7:40 PM",
),
            ],
          ),
        ),
      ),
    );}
      Widget stationInfoCard({
  required String title,
  required String value,
}) {

  return Container(

    width: double.infinity,

    padding: const EdgeInsets.all(20),

    decoration: BoxDecoration(

      color: const Color(0xFF1A2238),

      borderRadius: BorderRadius.circular(20),
    ),

    child: Column(

      crossAxisAlignment: CrossAxisAlignment.start,

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
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}}