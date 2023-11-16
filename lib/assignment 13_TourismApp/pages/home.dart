import 'package:assignment/assignment%2013_TourismApp/data/dummydata.dart';
import 'package:assignment/assignment%2013_TourismApp/pages/detailsPage1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      "details" : (context) =>Details(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const ListTile(
          leading: FaIcon(
            FontAwesomeIcons.bars,
            color: Colors.black,
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 80.0),
            child: Row(
              children: [
                Text(
                  'Go',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Fast',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          trailing: CircleAvatar(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color(0xFFEDEDED),
                  spreadRadius: 10,
                  blurRadius: 28,
                  offset: Offset(5, 5),
                ),
              ], borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " search",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ))),
            ),
            ),
          ),
        ),

      body:
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Text(
                      'Popular Places',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      width: 185,
                    ),
                    Text('View All',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))
                  ],
                ),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: 240),
                  children: product.map((tour) => InkWell(
                    onTap: ()=>Navigator.pushNamed(context,"details",
                        arguments: tour["id"]),
                          child: Stack(
                            children: [
                              Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(tour['image']))
                                ),
                              ),
                            ),
                              Positioned(
                                top: 4,
                                left: 10,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6)),
                                  height: 26,
                                  minWidth: 30,
                                  color: Colors.indigoAccent,
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Text(
                                      '7061',
                                      style: TextStyle(fontSize: 10,color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 10,
                                  bottom: 15,
                                  child: Text(
                                    tour['name'],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ]
                          ),
                        ),
                       )
                      .toList(),
                ),
              ),
              MaterialButton(
                minWidth: 380,
                  color: const Color(0xFF4E1198),
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
    );
  }
}
