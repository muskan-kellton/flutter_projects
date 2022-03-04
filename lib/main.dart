import 'package:flutter/material.dart';
import 'package:flutter_projects/bitcoin_app/bitcoin_app.dart';
import 'package:flutter_projects/bmi_app/bmi.dart';
import 'package:flutter_projects/dice_app/DiceApp.dart';
import 'package:flutter_projects/flash_chat_app/flash_chat_app.dart';
import 'package:flutter_projects/login_app/login.dart';
import 'package:flutter_projects/quizzler_app/quizzler.dart';
import 'package:flutter_projects/timer_app/timer.dart';
import 'package:flutter_projects/todoey_app/todoey_app.dart';
import 'package:flutter_projects/weather_app/weather.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: WelcomeScreen());
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  ElevatedButton getElevatedButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        style: ElevatedButton.styleFrom(
          fixedSize: Size(250.0, 40.0),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Projects'),
      ),
      backgroundColor: Color.fromARGB(255, 232, 160, 245),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          getElevatedButton('Login App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => LoginApp()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Dice App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => DicePage()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Timer App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Quizzler App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => Quizzler()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('BMI Calculator App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => BMICalculator()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Weather App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MyWeatherApp()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Bitcoin App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MyBitcoinApp()));
          }),
          SizedBox(
            height: 20,
          ),
          getElevatedButton('Flash Chat App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => FlashChat()));
          }),
          SizedBox(
            height: 20,
            width: double.infinity,
          ),
          getElevatedButton('Todoey App', () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => TodoeyApp()));
          }),
        ],
      ),
    );
  }
}
