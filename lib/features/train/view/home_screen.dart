import 'package:flutter/material.dart';
import 'train_status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Background Color
      backgroundColor: const Color(0xFF0B1020),

      body: SafeArea(

        child: Padding(

          // Overall screen spacing
          padding: const EdgeInsets.all(20),

          child: SingleChildScrollView(
            child: Column(
            
              // Left align everything
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
            
                // Heading
                const Text(
                  "Find Live Train Status",
            
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                const SizedBox(height: 10),
            
                // Subtitle
                const Text(
                  "Get real-time train updates instantly.",
            
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
            
                const SizedBox(height: 40),
            
                // Search Box
                Container(
            
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
            
                  decoration: BoxDecoration(
            
                    color: const Color(0xFF1A2238),
            
                    borderRadius: BorderRadius.circular(18),
                  ),
            
                  child:  TextField(
            
                    style: TextStyle(
                      color: Colors.white,
                    ),//enter press search
                     onSubmitted: (value) {

    Navigator.push(

      context,

      MaterialPageRoute(

        builder: (context) =>
            TrainStatusScreen(trainNumber:value),
      ),
    );
  },

            
                    decoration: InputDecoration(
            
                      border: InputBorder.none,
            
                      hintText: "Enter Train Number",
            
                      hintStyle: TextStyle(
                        color: Colors.white54,
                      ),
            
                      icon: Icon(
                        Icons.train,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ),
            
                const SizedBox(height: 25),
            
                // Track Button
                SizedBox(
            
                  width: double.infinity,
                  height: 58,
            
                  child: ElevatedButton(
            
                    style: ElevatedButton.styleFrom(
            
                      backgroundColor: Colors.orange,
            
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
            
                    onPressed: () {

  Navigator.push(

    context,

    MaterialPageRoute(

      builder: (context) =>  TrainStatusScreen(trainNumber: '12951',),
    ),
  );
},
                    child: const Text(
                      "Track Live",
            
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            
                const SizedBox(height: 40),
            
                // Quick Access Heading
                const Text(
                  "Quick Access",
            
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                const SizedBox(height: 10),
            
                // Quick Access Cards
                Row(
            
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
                  children: [
            
                    quickAccessCard(
                      icon: Icons.location_on,
                      title: "Live",
                    ),
            
                    quickAccessCard(
                      icon: Icons.confirmation_number,
                      title: "PNR",
                    ),
            
                    quickAccessCard(
                      icon: Icons.event_seat,
                      title: "Seats",
                    ),
                  ],
                ),
            
                const SizedBox(height: 40),
            
                // Recent Searches Heading
                const Text(
                  "Recent Searches",
            
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            
                const SizedBox(height: 20),
            
                // Recent Train Cards
                recentTrainCard("Rajdhani Express"),
            
                recentTrainCard("Vande Bharat"),
            
                recentTrainCard("Shatabdi Express"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Quick Access Card Widget
  Widget quickAccessCard({
    required IconData icon,
    required String title,
  }) {

    return Container(

      width: 100,
      height: 100,

      decoration: BoxDecoration(

        color: const Color(0xFF1A2238),

        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,

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

  // Recent Search Card Widget
  Widget recentTrainCard(String trainName) {

    return Container(

      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(

        color: const Color(0xFF1A2238),

        borderRadius: BorderRadius.circular(18),
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