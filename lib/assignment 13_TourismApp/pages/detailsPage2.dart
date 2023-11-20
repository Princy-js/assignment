import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: SecondPage(),
//   ));
// }
class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 260,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/france.png"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Italy",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )),
          ),
          // SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Italy, a country in Southern Europe,"
                " boasts a rich tapestry of history, art, "
                "and culture. From the ancient ruins of Rome "
                "to the Renaissance treasures of Florence, "
                "its cities resonate with heritage. "
                "Italy's culinary prowess is renowned worldwide,"
                " with pasta, pizza, and gelato as iconic staples."
                " The stunning landscapes range from the sun-drenched"
                " coasts of the Amalfi Coast to the picturesque vineyards "
                "of Tuscany. Italy's influence on fashion, design, and "
                "opera is global, while its people are known for their "
                "warmth and passion. With a language that sings and a "
                "lifestyle that savors every moment, Italy is a captivating"
                " destination for travelers.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 15
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Place to Visit",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                )),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/germany.jpg")),
                      borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/india.jpg")),
                      borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/italy.png")),
                      borderRadius: BorderRadius.all(Radius.circular(16))
                  ),
                ),
              ),

            ],
          ),
          const SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Button border radius
              ),
              minimumSize: Size(350, 45), // Set the desired width and height
            ),
            onPressed: () {
              // Add your onPressed logic here
            },
            child: const Text('Press to Explore'),
          ),
        ],
      ),
    );
  }

}