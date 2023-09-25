
import 'package:assignment/assignment%202%20login%20registration/login.dart';
import 'package:assignment/assignment%202%20login%20registration/registration.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: SplashPage(),
      ));
}
class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Text("Hello There!",
              style: TextStyle(
                fontSize: 30,
                fontWeight:FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Automatic identity verification which enables you to verify your identity",
                 style:  TextStyle(
                   color: Colors.black54,
                   fontSize: 20
                 ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                  image: AssetImage("assets/images/6100413_freelancer_laptop_online_working_icon.png"),
              width: 200,
              height: 200,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 250, // Set the desired width
              height: 50, // Set the desired height
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                child: Text('Login'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 250, // Set the desired width
              height: 50, // Set the desired height
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Registration()));
                },
                child: Text('Register'),
              ),
            )


          ],
        ),
      ),
    );
  }

}