import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product_Ass extends StatelessWidget {
  AssetImage? image;
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  IconData? icon1;
  IconData? icon2;
  IconData? icon3;

  Product_Ass(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.icon1,
      required this.icon2,
      required this.icon3});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white10,
      ),
      child: Column(
        children: [
          SizedBox(height: 18,),
          Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(fit: BoxFit.cover, image: image!))),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0,top: 15),
              child: Text(
                text1!,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 24.0,top:5),
              child: Text(
                text2!,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0,top:5),
                  child: Text(
                    text3!,
                    style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Icon(icon1!,color: Colors.white,),
              )
            ],
          ),
          SizedBox(height: 8,),
          Row(
              children: [
          Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child:
                Icon(icon2!,color: Colors.yellow,size: 14,),),
                Icon(icon2!,color: Colors.yellow,size: 14,),
                Icon(icon2!,color: Colors.yellow,size: 14,),
                Icon(icon2!,color: Colors.yellow,size: 14,),
                Icon(icon3!,color: Colors.white,size: 14,),
                SizedBox(width:40 ,),
                Text(text4!,style: TextStyle(color: Colors.white70),)
              ],
          )
        ],
      ),
    );
  }
}
