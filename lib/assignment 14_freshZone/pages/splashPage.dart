import 'dart:async';
import 'package:assignment/assignment%2014_freshZone/pages/homesliver.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashPageFFZ(),
  ));
}

class SplashPageFFZ extends StatefulWidget {
  const SplashPageFFZ({super.key});

  @override
  State<SplashPageFFZ> createState() => _SplashPageFFZState();
}

class _SplashPageFFZState extends State<SplashPageFFZ> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => HomePageFFZ()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        fit: BoxFit.cover,
        image: AssetImage(
            'assets/farmersFZ/splash.jpeg'),
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
