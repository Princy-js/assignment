import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridView_Ass_2(),));
}
class GridView_Ass_2 extends StatelessWidget{
  
  var text = ["USA","England","France","Russia","Canada"];
  var images = [
    "assets/images/usa.jpg",
    "assets/images/england.jpg",
    "assets/images/france.jpg",
    "assets/images/russia.jpg",
    "assets/images/canada.jpeg"
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView 2"),
      ),
      body: GridView.count(crossAxisCount: 2,
             children: List.generate(5, (index) =>Stack(
               children:[ Padding(
                 padding: const EdgeInsets.all(5.0),
                 child: Container(
                   width: 400,
                   height: 300,
                   decoration: BoxDecoration(
                     borderRadius: const BorderRadius.all(Radius.circular(10)),
                     image: DecorationImage(
                         fit: BoxFit.fill,
                         image:AssetImage(images[index],
                       ))
                   ),

                 ),
               ),
                 Positioned(
                   bottom: 20,
                     left: 20,
                     child: Text(text[index],
                     style: const TextStyle(
                         fontSize: 20,
                         color: Colors.white,
                       fontWeight: FontWeight.bold
                     ),
                     ))
               ]
             ),
              ),

             ),
      );

  }

}