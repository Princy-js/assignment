import 'package:assignment/assignment%2013_TourismApp/pages/login.dart';
import 'package:assignment/assignment%2013_TourismApp/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_SIgnUp extends StatelessWidget {
  const Login_SIgnUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120.0),
              child: Image(
                image: AssetImage("assets/images/tour1-removebg-preview.png"),
                width: 170,
                height: 170,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MaterialButton(
                minWidth: 140,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 12.0, bottom: 12),
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                '- or -',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.green,
                  onPressed: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegistrationPage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Register here',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.indigo,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Login With FaceBook',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
            ),

            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.red,
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 10),
                    child: Row(
                      children: [
                        Text(
                          'Login With Google',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
