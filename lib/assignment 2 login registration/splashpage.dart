
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
                fontSize: 70,
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
            MaterialButton(
              minWidth: 500,
              height: 60,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              color: Colors.green,
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: Colors.green
                  ),
                  borderRadius: BorderRadius.circular(40)
              ),
              child: Text("login",style: TextStyle(
                  fontSize:15,fontWeight: FontWeight.w500,color: Colors.white
              ),),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
                minWidth: 500,
                height: 60,
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Registration()));
                },
            color: Colors.green,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.green
                ),
                borderRadius: BorderRadius.circular(40)
              ),
              child: Text("Register",style: TextStyle(
                fontSize:15,fontWeight: FontWeight.w500,color: Colors.white
              ),),
            )


          ],
        ),
      ),
    );
  }

}