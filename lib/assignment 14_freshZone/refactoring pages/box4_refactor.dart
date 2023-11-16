import 'package:flutter/material.dart';

class Box4 extends StatelessWidget {
  AssetImage? image;
  String? text1;
  String? text2;
  String? text3;

  Box4({
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFD1D3D2),
            width: .5,
          ),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(backgroundImage: image!,),
              title: Text(text1!,style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
              subtitle: Text(text2!,style: TextStyle(fontSize: 14),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(text3!,textAlign: TextAlign.justify,),
            )
          ],
        ),
      ),
    );
  }
}
