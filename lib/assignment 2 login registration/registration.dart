import 'package:assignment/assignment%202%20login%20registration/login.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? pass;
  bool passwordhidden = true;
  bool cpassword = true;
  final key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: key1,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text("Register",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Welcome back! Login with your credentials",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20
                  ),),

              ),
              SizedBox(
                height: 60,
              ),
              TextFormField(

                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "Email ID",
                    labelText: "Email Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
                validator: (uname){
                  if(uname!.isEmpty || !uname.contains("@") || !uname.contains(".com")){
                    return "user name must not be empty / Invalid";
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                obscureText: passwordhidden,
                obscuringCharacter: "*",
                validator: (pswd){
                  if(pswd!.isEmpty || pswd.length < 6){
                    return "Invalid password / must not be empty";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            if(passwordhidden == true){
                              passwordhidden = false;
                            }else{
                              passwordhidden = true;
                            }
                          });
                        }, icon:Icon(
                        passwordhidden == true
                            ?Icons.visibility_off_sharp:
                        Icons.visibility) ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),SizedBox(
                height: 40,
              ),
              TextFormField(
                obscureText: cpassword,
                obscuringCharacter: "*",
                validator: (cpswd){
                  if(cpswd!.isEmpty || cpswd == pass){
                    return "Invalid password";
                  }else{
                    return null;
                  }
                },
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            if(cpassword == true){
                              cpassword = false;
                            }else{
                              cpassword = true;
                            }
                          });
                        }, icon:Icon(
                        cpassword == true
                            ?Icons.visibility_off_sharp:
                        Icons.visibility) ),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    )
                ),
              ),
              SizedBox(
                height: 60,
              ),
              MaterialButton(

                minWidth: double.infinity,
                height: 60,
                onPressed: (){
                  final valid = key1.currentState!.validate();
                  if(valid){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage()));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Invalid datas")));
                  }
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
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
                }, child:Text("Do you ahve an account? Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
