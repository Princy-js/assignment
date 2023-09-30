import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: GridViewAss_1(),
  ));
}
class GridViewAss_1 extends StatelessWidget{

  var icons = [
    Icons.home,
    Icons.camera_alt_outlined,
    Icons.connect_without_contact,
    Icons.phone,
    Icons.find_in_page,
    Icons.mic_off_outlined,
    Icons.notification_important_outlined,
    Icons.try_sms_star,
    Icons.book,
    Icons.mail,
    Icons.sim_card,
    Icons.add_photo_alternate_outlined,

  ];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4.5 / 2.5
    ),
      
     children: List.generate(12, (index) =>
         Padding(
           padding: const EdgeInsets.all(10),
           child: Card(
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(15.0), // Set the border radius here
             ),
             elevation: 8,
             color: Colors.primaries[index % Colors.primaries.length],
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Icon(icons[index],size: 50,),
                 ),
                 const Padding(
                   padding: EdgeInsets.only(left:9),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Heart",
                       style: TextStyle(
                         fontSize: 20
                       ),
                       ),
                       Text("Shaker",
                         style: TextStyle(
                             fontSize: 20
                         ),
                       )
                     ],
                   ),
                 )
               ],
             ),
           ),
         )
     ), 
      
  ),
  );
  }
  
}