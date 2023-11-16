import 'package:assignment/assignment%2013_TourismApp/pages/home.dart';
import 'package:assignment/assignment%2013_TourismApp/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatelessWidget {

  @override
  String? username ;
  String? password ;

  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:  const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text("Register here!",
                  style: GoogleFonts.abyssinicaSil(fontSize: 30,),
                ),
              ),
              SizedBox(height: 50,),
              Image.asset('assets/images/tour1-removebg-preview.png',
                width: 130,
                height: 130,
              ),
              SizedBox(height: 80,),

              TextField(
                controller: uname_controller,
                decoration: const InputDecoration(
                    hintText: "Username",
                    labelText:"Username",
                    prefixIcon: Icon(Icons.account_circle),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: const InputDecoration(
                    labelText:"Password",
                    hintText: "Password",
                    prefixIcon: Icon(Icons.lock_person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                ),
              ),
              const SizedBox(height: 20,),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                controller: pass_controller,
                decoration: const InputDecoration(
                    labelText:"ConfirmPassword",
                    hintText: "ReEnterPassword",
                    prefixIcon: Icon(Icons.lock_person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    )
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(username !=''  && password != '' ){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Invalid username/password  or the fields are empty")));
                }
              } , child: const Text("register")),

            ],
          ),
        ),
      ),
    );
  }

}
