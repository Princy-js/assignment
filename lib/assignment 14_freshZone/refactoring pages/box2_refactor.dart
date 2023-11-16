import 'package:flutter/material.dart';

class Box2 extends StatelessWidget {
  AssetImage? image;
  String? text1;
  String? text2;
  String? text3;
  String? text4;
  VoidCallback? click;

  Box2({
    required this.image,
    required this.text1,
    required this.text2,
    this.text3,
    required this.text4,
    required this.click
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:4,right: 4,top: 3,bottom: 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Color(0xFFE7E8E7))),
        child: Column(
          children: [
            Image(image: image!,width: 180,height: 120,),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text(text1!,style: TextStyle(fontSize: 16),)),
            ),
            SizedBox(height: 15,),
            Row(
              children: [Text(text2!),

                Padding(
                  padding: const EdgeInsets.only(left: 85.0),
                  child: Text(text3!,style: TextStyle(color: Colors.red,fontSize: 12,fontWeight: FontWeight.w900),),
                )],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Text(text4!),
                Padding(
                  padding: const EdgeInsets.only(left: 34.0,),
                  child: MaterialButton(
                    height: 25,
                    color: Color(0xFF2DB457),
                      onPressed: click!,
                  child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 11),),)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
