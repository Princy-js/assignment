import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview2() ,
  ));
}
class Listview2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cities Around World")),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
             child: Row(
               children: [
                 Image(image: AssetImage("assets/images/New-Delhi-India-War-Memorial-arch-Sir.png"),
                 fit: BoxFit.fitHeight,
                 width: 200,
                   height: 100,
                 ),
                 Column(
                   children: [
                     Text("Delhi",
                       textAlign: TextAlign.left,
                     style: TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 20,

                     ),
                     ),
                     Text("India"),
                     Text("Population : 3.9 mill")
                   ],
                 )
               ],
             ),
            ),
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/New-Delhi-India-War-Memorial-arch-Sir.png"),
                  fit: BoxFit.fitHeight,
                  width: 200,
                  height: 100,
                ),
                Column(
                  children: [
                    Text("Delhi",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                    Text("India"),
                    Text("Population : 32.9 mill")
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/images (1).jpg"),
                  fit: BoxFit.fitHeight,
                  width: 200,
                  height: 100,
                ),
                Column(
                  children: [
                    Text("Finland",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                    Text("Europe"),
                    Text("Population : 5.54 mill")
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/london.jpg"),
                  fit: BoxFit.fitHeight,
                  width: 200,
                  height: 100,
                ),
                Column(
                  children: [
                    Text("London",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                    Text("UK"),
                    Text("Population : 8.8 mill")
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/images.jpg"),
                  fit: BoxFit.fitHeight,
                  width: 200,
                  height: 100,
                ),
                Column(
                  children: [
                    Text("Vancouver",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                    Text("Canada"),
                    Text("Population : 2.6 mill")
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          Card(
            color: Colors.orange,
            child: Row(
              children: [
                Image(image: AssetImage("assets/images/download (1).jpg"),
                  fit: BoxFit.fitHeight,
                  width: 200,
                  height: 100,
                ),
                Column(
                  children: [
                    Text("Newyork",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,

                      ),
                    ),
                    Text("Canada"),
                    Text("Population : 2.6 mill")
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
  
}