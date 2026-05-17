import 'package:flutter/material.dart';
import 'train_status_screen.dart';
import 'widgets/quick_access_card.dart';
import 'widgets/recent_train_card.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  final TextEditingController
      trainController =
          TextEditingController();

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
            controller: trainController,
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

    builder: (context) =>

        TrainStatusScreen(

      trainNumber:
          trainController.text,
    ),
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
            
                    const QuickAccessCard(
                      icon: Icons.location_on,
                      title: "Live",
                    ),
            
                    const QuickAccessCard(
                      icon: Icons.confirmation_number,
                      title: "PNR",
                    ),
            
                    const QuickAccessCard(
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
                const RecentTrainCard(
                trainName: "Rajdhani Express"),
            
              const RecentTrainCard(
                trainName: "Vande Bharat"),
            
              const RecentTrainCard(
                trainName: "Shatabdi Express"),
              ],
            ),
          ),
        ),
      ),
    );
  }

}