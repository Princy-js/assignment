import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ProfileUi_2(),
    debugShowCheckedModeBanner: false,
  ));
}
class ProfileUi_2 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.arrow_back,
      color: Colors.black,
      ),
      backgroundColor: Colors.white,
    ),
    endDrawer: const Drawer(

    ),
    body: Center(
      child: Column(
        children: [

          const Padding(
            padding: EdgeInsets.all(18.0),
            child: CircleAvatar(
              minRadius: 10,
              maxRadius: 70,
              backgroundImage: AssetImage("assets/images/profile2.jpg"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Logo_de_Facebook.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/twitter.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/LinkedIn.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/git.png"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const Text("Jerin",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text("@Webrror",
            style: TextStyle(
              fontSize: 16
            ),
          ),
          const SizedBox(height: 8,),
          const Text("Mobile App Developer",
          style: TextStyle(
            fontSize: 22,
          ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                       color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.privacy_tip_outlined),
                        title: Text("Privacy"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.history),
                        title: Text("Purchase History"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.help_outline_outlined),
                        title: Text("Help & Support"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.group),
                        title: Text("Invite a Friend"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 350,
                      height: 50,
                      decoration: const BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                      child: const ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Logout"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]
      ),
   ),
    );
  }

}