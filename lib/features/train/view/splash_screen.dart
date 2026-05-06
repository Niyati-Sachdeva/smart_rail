import 'dart:async';
import 'home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {//initstate particular ek ek screen aur start krta h
    super.initState();

    
    Timer(
      const Duration(seconds: 3),
      () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen(),),);
        // Navigation will be added later

      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // Background color
      backgroundColor: const Color(0xFF0B1020),

      body: Center(

        child: Column(

          // Center all widgets vertically
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            // Train Icon
            const Icon(
              Icons.train,
              color: Colors.orange,
              size: 90,
            ),            // Space between widgets
            const SizedBox(height: 20),

            // App Name
            const Text(
              "SmartRail",

              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            // Space
            const SizedBox(height: 10),

            // Subtitle
            const Text(
              "Track Every Journey Live",

              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                letterSpacing: 0.5,
              ),
            ),

            // Space
            const SizedBox(height: 40),
const Text("Know weather of your destination",
style: TextStyle(
  color: Colors.white70,
  fontSize: 16,
  letterSpacing:1.5

),),
const SizedBox(height: 40,),
            // Loading Indicator
            const CircularProgressIndicator(
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}