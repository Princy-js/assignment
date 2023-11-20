import 'package:assignment/assignment%2013_TourismApp/data/dummydata.dart';
import 'package:flutter/material.dart';

// void main(){
//   runApp(const MaterialApp(home:Details() ,));
// }
class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {

    var id = ModalRoute.of(context)?.settings.arguments;
    var tours = product.firstWhere((tours) => tours['id'] == id);
    return Scaffold(
       body: SingleChildScrollView(
         child: Column(
         
           children: [
             const SizedBox(height: 50,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 const Column(
         
                   children: [
                     Text('Most Furious places\n natural places',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
         
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Icon(Icons.star,color: Colors.yellow,),
                         Icon(Icons.star,color: Colors.yellow,),
                         Icon(Icons.star,color: Colors.yellow,),
                         Icon(Icons.star,color: Colors.yellow,),
                         Icon(Icons.star,color: Colors.yellow,),
                         SizedBox(width: 10,),
                         Text('4.7 Rating',style: TextStyle(color: Colors.black38),)
                       ],
                     )
                   ],
                 ),
         
                 Padding(
                   padding: const EdgeInsets.only(left: 90.0),
                   child: Container(
                       width:80,
                       height: 80,
                     decoration: BoxDecoration(
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(tours['image'])),
                       borderRadius: BorderRadius.circular(6)
                     ),
                       ),
                 )
               ],
             ),
             const SizedBox(height: 30,),
             const Align(
                 alignment: Alignment.centerLeft,
                 child: Padding(
                   padding: EdgeInsets.only(left: 18.0),
                   child: Text('About Places',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 )),
             const SizedBox(height: 15,),
              Padding(
               padding: EdgeInsets.only(left: 18.0),
               child: Text(tours['about'],textAlign: TextAlign.justify,
                  ),
             ),
             const SizedBox(height: 30,),
             const Align(
                 alignment: Alignment.centerLeft,
                 child: Text('    Special Facilities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
             const Padding(
               padding: EdgeInsets.all(20.0),
               child: Row(
                 children: [
                   Icon(Icons.car_repair,color: Colors.lightBlueAccent,),
                   Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('Parking',style: TextStyle(color: Colors.lightBlueAccent),),
                   ),
                   SizedBox(width: 40,),
                   Icon(Icons.live_help_sharp,color: Colors.lightBlueAccent,),
                   Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('24x7 Help',style: TextStyle(color: Colors.lightBlueAccent),),
                   ),
                   SizedBox(width: 40,),
                   Icon(Icons.wifi,color: Colors.lightBlueAccent,),
                   Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('free wi-fi',style: TextStyle(color: Colors.lightBlueAccent),),
                   )
                 ],
               ),
             ),
             Container(
               width: 350,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(tours['image']))
              ),
             ),
             const SizedBox(height: 23,),
             const Align(
                 alignment: Alignment.centerLeft,
                 child: Text('    Special Facilities',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20))),
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: Row(
                 children: [
                   Container(
                     width: 70,
                     height: 40,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(6),
                       color: Colors.lightBlue.shade100
                     ),
                     child: const Column(
                       children: [
                         Text('Adult',style: TextStyle(fontWeight: FontWeight.bold),),
                         Text('2')
                       ],
                     ),
                   ),
                   const SizedBox(width: 23,),
                   Container(
                     width: 70,
                     height: 40,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(6),
                         color: Colors.lightBlue.shade100
                     ),
                     child: const Column(
                       children: [
                         Text('Adult',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
                         Text('2')
                       ],
                     ),
                   ),
                   const SizedBox(width: 23,),
                   Container(
                     width: 70,
                     height: 40,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(6),
                         color: Colors.lightBlue.shade100
                     ),
                     child: const Column(
                       children: [
                         Text('Adult',style: TextStyle(fontWeight: FontWeight.bold),),
                         Text('2')
                       ],
                     ),
                   ),
                   const SizedBox(width: 20,),
                   Container(
                     width: 70,
                     height: 40,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(6),
                         color: Colors.lightBlue.shade100
                     ),
                     child: const Column(
                       children: [
                         Text('Adult',style: TextStyle(fontWeight: FontWeight.bold),),
                         Text('2')
                       ],
                     ),
                   )
                 ],
               ),
             ),
             MaterialButton(
                 minWidth: 360,
                 color: Colors.lightBlue,
                 child: const Padding(
                   padding: EdgeInsets.only(top: 10.0, bottom: 15),
                   child: Text(
                     'Explore Now',
                     style: TextStyle(color: Colors.white),
                   ),
                 ),
                 onPressed: () {})
           ],
         ),
       ),
    );
  }
}
