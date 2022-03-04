import 'package:flutter/material.dart';
import 'package:flutter_projects/weather_app/screens/loading_screen.dart';

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
