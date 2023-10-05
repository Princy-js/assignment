import 'package:assignment/assignment%209%20tour%20ui/second%20page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Tour_Ui()
  ));
}
class Tour_Ui extends StatelessWidget{
  var images = [
    "assets/images/germany.jpg",
    "assets/images/france.png",
    "assets/images/italy.png",
    "assets/images/india.jpg"
  ];
  var text = ["Germany","France","Italy","India"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Popular"),
       backgroundColor: Colors.deepPurple,
     ),

     body: ListView.custom(
         childrenDelegate: SliverChildBuilderDelegate(
           childCount: 4,
                 (context, index) => GestureDetector(

                   onTap: (){
                     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SecondPage()));
                   },
                   child: Stack(

                     children: [
                       Padding(
                         padding: const EdgeInsets.all(5.0),
                         child: Container(
                           width: double.infinity,
                           height: 160,
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               fit: BoxFit.cover,
                                 image: AssetImage(images[index])),
                             borderRadius: BorderRadius.all(Radius.circular(12))
                           ),
                           child: Padding(
                             padding: const EdgeInsets.only(left: 8,bottom: 5),
                             child: Align(
                               alignment: Alignment.bottomLeft,
                                 child: Text(text[index],
                                 style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white
                                 ),
                                 )),
                           ),
                         ),
                       )
                     ],
                   ),
                 )
         )
     ),
   );
  }
  
}