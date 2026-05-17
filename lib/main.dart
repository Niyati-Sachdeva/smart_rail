import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/weather/controller/weather_provider.dart';
import 'features/train/view/splash_screen.dart';
import 'features/train/controllers/train_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers:[ 
    ChangeNotifierProvider(
      create:(context) => WeatherProvider(),
      
  ),
  ChangeNotifierProvider(
    create: (context)=>TrainProvider(),),
      ],
      child: const MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'SmartRail',

      home: const SplashScreen(),
    );
  }
}