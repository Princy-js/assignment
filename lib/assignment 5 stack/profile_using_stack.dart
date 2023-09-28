import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: Profile(),
      ),
  );
}
class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Drawer(
          child: Icon(Icons.menu,color: Colors.white,),
          backgroundColor: Colors.blue,
        ),
        title: Center(
            child: Text("Profile"),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder:(context){
                 return [
                    PopupMenuItem(child: Text("Details")),
                   PopupMenuItem(child: Text("Settings"))
                 ];
              }
          )
        ],
      ),
      body: Center(
          child: Stack(
             children: [
              Container(
                color: Colors.black87,
              ),
               Container(
                 height: 400,
                 color:Colors.white,
               ),
               Container(
                 height: 200,
                 child: Image(image: AssetImage("assets/images/background.jpg"),
                 width:double.infinity,
                 fit: BoxFit.fitWidth,
                 ),
               ),

               Positioned(
                 top: 170,
                 //   bottom: 380,
                   left: 30,
                 //   right: 150,
                   child: CircleAvatar(
                     minRadius: 20,
                     maxRadius: 30,
                     child: Icon(Icons.message,),
                     backgroundColor: Colors.deepOrange,

                   )),
               Positioned(
                   top: 170,
                   //   bottom: 380,
                   right: 30,
                   //   right: 150,
                   child: CircleAvatar(
                     minRadius: 20,
                     maxRadius: 30,
                     child: Icon(Icons.add,),
                     backgroundColor: Colors.blue,

                   )),
               Positioned(
                 top: 147,
                   left: 142,
                   child: CircleAvatar(
                     maxRadius: 60,
                     minRadius: 50,
                     backgroundImage: AssetImage("assets/images/imagespro.jpg"),
                   )),
               Positioned(
                 top: 330,
                   left: 130,
                   child: Text("David Beckham",
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 22
                   ),
                   )),
               Positioned(
                   top: 360,
                   left: 140,
                   child: Text("model/superstar",
                     style: TextStyle(
                         color: Colors.blueAccent,
                         fontSize: 17
                     ),
                   )),
               Positioned(
                   bottom: 50,
                   //   bottom: 380,
                   right: 20,
                   //   right: 150,
                   child: CircleAvatar(
                     minRadius: 20,
                     maxRadius: 30,
                     child: Icon(Icons.edit,
                     color: Colors.blue,
                     ),
                     backgroundColor: Colors.black54,

                   )),


             ],
          )),
    );
  }

}