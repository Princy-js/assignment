import 'package:assignment/assignment12%20CstmWdgt/custom%20Widget_ass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(const MaterialApp(home: Gridview_Ass(),));
}
class Gridview_Ass extends StatelessWidget {
  const Gridview_Ass({super.key});

  @override
  Widget build(BuildContext context) {
    var images = [
      "assets/images/bag.jpg",
      'assets/images/shoe.jpg',
      'assets/images/shirt2.jpg',
      'assets/images/chain.jpg',
      'assets/images/shirt2.jpg',
      'assets/images/chain.jpg',
    ];
    var title = [
      'Nike Air max 270',
      'Nike Air max 270',
      'Mentli Solid Blue',
      'Korea Choker the',
      'Mentli Solid Blue',
      'Korea Choker the'
    ];
    var sub =[
      'React ENG',
      'React ENG',
      'Slim Fit',
      'Black',
      'Slim Fit',
      'Black'
    ];
    var price = [
      '\$ 299.4',
      '\$ 299.4',
      '\$ 50.34',
      '\$ 29.40',
      '\$ 50.34',
      '\$ 29.40'
    ];
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              minRadius: 5,
              maxRadius: 25,
              child: Icon(Icons.arrow_back, color: Colors.black,),
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text("Recomended",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),),
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.white12,
              minRadius: 5,
              maxRadius: 25,
              child: Icon(
                Icons.align_vertical_center_outlined, color: Colors.white,),
            ),
          ),
        ),
        body: GridView.builder(
          itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                mainAxisExtent: 290
            ),
            itemBuilder: (context, index) {
              return Product_Ass(image: AssetImage(images[index]),
                  text1: title[index],
                  text2: sub[index],
                  text3: price[index],
                  text4: '932 sale',
                  icon1: Icons.favorite_border,
                  icon2: Icons.star,
                  icon3: Icons.star_border);
            })

    );
  }
}
