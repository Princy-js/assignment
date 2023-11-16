import 'package:flutter/material.dart';

class Box3 extends StatelessWidget {
  AssetImage? imageb;
  String? textb;

  Box3({
    required this.imageb,
    required this.textb,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: SizedBox(
        child: Container(
          width: 180,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFDDDFDE),
              width: .8,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                child: Image(
                  image: imageb!,
                  width: 200,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0,left: 5),
                  child: Text(textb!,style: TextStyle(fontSize: 15),),
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Text('  a year ago'),
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Color(0xFF2DB457),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
