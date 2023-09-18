import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(
    home: Splash(),
  )
  );
}
class Splash extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87
        ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 200,top:240),
              child: Image(
                  image: AssetImage("assets/icons/gpay-removebg-preview.png"),
                  width: 130,
                height: 130,
              ),
            ),
            // SizedBox(height: 100),

        // Spacer(), // Add a spacer to push the text to the bottom
        Padding(
          padding: const EdgeInsets.only(top: 80,bottom: 20),
          child: Text(
            "Google",
            style: GoogleFonts.aBeeZee(
              color: Colors.white70,
              fontSize: 28,
            ),
          ),
        ),

          ],
        )
      ),
      ),
    );

  }
  
}