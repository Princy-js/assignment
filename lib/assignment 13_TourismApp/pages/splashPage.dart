import 'dart:async';

import 'package:assignment/assignment%2013_TourismApp/pages/login_signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: IntroPage(),
  ));
}

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}
class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => Login_SIgnUp()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
              Colors.blue,
              Colors.lightBlueAccent,
              Colors.lightBlue,
              Colors.blueAccent
            ])),
        child: const Center(
          child: Image(
            image: AssetImage("assets/images/tour1-removebg-preview.png"),
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
