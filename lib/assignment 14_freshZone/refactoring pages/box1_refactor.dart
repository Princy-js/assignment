import 'package:flutter/material.dart';

class Box1 extends StatelessWidget{
  AssetImage? image;
  String? text;

  Box1({
    required this.image,
    required this.text
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 400,
         decoration: const BoxDecoration(
           color: Colors.white,
           boxShadow: [ BoxShadow(
             color: Color(0xFFEFF0EF), // Color of the shadow
             spreadRadius: 1, // Spread radius
             blurRadius: 1, // Blur radius
             offset: Offset(1, 4), // Offset in x and y
           ),],
           borderRadius: BorderRadius.all(Radius.circular(6)),
         ),
        child: Column(
          children: [
            ClipRRect(
        borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(6.0),
        topRight: Radius.circular(6.0),),
              child: Image(
                fit: BoxFit.fitWidth,
                image: image!,width: double.infinity,height: 80,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(text!),
            ),
          ],
        ),
      ),
    );
  }

}