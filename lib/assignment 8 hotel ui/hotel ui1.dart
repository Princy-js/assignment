import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Hotel_Ui(),
  ));
}
class Hotel_Ui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Container(
            width: double.infinity,
            height: 300,
            child: const Image(image: AssetImage("assets/images/crownplaza.jpg"),
            fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 190,
              left: 20,
              child: Text("Crowne Plaza",
              style:TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              )),
          const Positioned(
            top: 225,
              left: 20,
              child: Text("Kochi,Kerala",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white
              ),
              )),
          Positioned(
            top: 255,
            left: 20,
            child: Container(
              width: 110,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(20),
                )
              ),
              child: const Center(
                child: Text("8.4/8.5 reviews",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 255,
              right: 20,
              child: Icon(Icons.favorite_border,color: Colors.white,)
          ),
          const Positioned(
              top: 315,
              left: 20,
              child: Icon(Icons.star,color: Colors.purple,)
          ),
          const Positioned(
              top: 315,
              left: 40,
              child: Icon(Icons.star,color: Colors.purple,)
          ),
          const Positioned(
              top: 315,
              left: 60,
              child: Icon(Icons.star,color: Colors.purple,)
          ),
          const Positioned(
              top: 315,
              left: 80,
              child: Icon(Icons.star,color: Colors.purple,)
          ),
          const Positioned(
              top: 315,
              left: 100,
              child: Icon(Icons.star,color: Colors.grey,)
          ),
          const Positioned(
            top: 340,
            left: 20,
            child: Row(
              children: [
                Icon(Icons.location_pin,
                color: Colors.grey,
                  size: 20,
                ),
                Text("8 km to LuluMall",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
                ),
                )
              ],
            ),
          ),
          const Positioned(
            right: 20,
            top: 315,
            child: Text("\$200",
            style: TextStyle(
              color: Colors.purple,
              fontSize: 20,
               fontWeight: FontWeight.bold
            ),
            ),
          ),
          const Positioned(
            right: 20,
              top: 340,
              child: Text("/per night",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16
              ),
              )
          ),
          Positioned(
            top: 380,
            left: 40,
            child:ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Button border radius
                ),
                minimumSize: Size(310, 45), // Set the desired width and height
              ),
              onPressed: () {
                // Add your onPressed logic here
              },
              child: Text('Book Now'),
            ),
          ),
          const Positioned(
            top: 460,
              left: 10,
              child: Text("Ramada Plaza Palm Grove",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              )),

          const Positioned(
           top: 500,
            left: 10,
            right: 10,
            child: Text("Replete with waterfalls, hizionale comfortable"
                " resorts and homestays, Wayanad in Kerala is famous "
                "for its spice plantan and wide Walking through the strawing "
                "experiencing sort holiday are one of the many things you "
                "can do to get a taste of Wayanad",
              textAlign: TextAlign.justify,
            ),
          ),
          const Positioned(
              top: 585,
              left: 10,
              right: 10,
              child: Text("Wayanad is best known for the widife reserves Wayanad "
              "die reserve which is hoe to an exquiste variety off and fauna "
              "Wayanad wildlife reserve is an integral part of the Nig Biosphere"
              " reserve peacefully located amicat the serene hils of Weslam Ghats "
              "Weysred homes a wide variety of wife like ephalopards, and bears "
              "Wayanad is a perfect send des from the cities of South Inda f taking"
              " med trip hom Bungalone, you will drive through three ",
            textAlign: TextAlign.justify,
          )
          ),
          const Positioned(
            bottom: 10,
            left: 20,
            child: Column(
                  children: [
                    Icon(Icons.search, color: Colors.purple,size: 28,),
                    Text("search",style: TextStyle(
                      color: Colors.purple
                    ),)
                  ],

            ),
          ),
          const Positioned(
            bottom: 10,
            left: 175,
            child: Column(
              children: [
                Icon(Icons.favorite, color: Colors.grey,size: 28,),
                Text("favorite")
              ],

            ),
          ),
          const Positioned(
            bottom: 10,
            right: 20,
            child: Column(
              children: [
                Icon(Icons.settings, color: Colors.grey,size: 28,),
                Text("settings")
              ],

            ),
          )

        ],
      ),
    );
  }

}