import 'package:assignment/assignment%2011%20music_ui/music_ui_1.dart';
import 'package:assignment/assignment%2011%20music_ui/music_ui_3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';


void main() {
  runApp(MaterialApp(
    home: Music_ui_2(),
  ));
}

class Music_ui_2 extends StatefulWidget {

  @override
  State<Music_ui_2> createState() => _Music_ui_2State();
}

class _Music_ui_2State extends State<Music_ui_2> {
  int selectedIndex=0;
  var screens = [
    Music_ui_2(),
    Music_Ui_1(),
    Music_Ui_1(),
    Music_ui_3(),
  ];
  var img = [
    "assets/images/mui1.jpg",
    "assets/images/mui3.jpg",
    "assets/images/mui2.jpg",
    "assets/images/mui4.png",
    "assets/images/mui5.jpg",
    "assets/images/mui6.jpg",
  ];

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Center(
                child: Text(
                  "Musify",
                  style: GoogleFonts.alegreyaSans(
                      color: Colors.pink[100],
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                )),
            backgroundColor: Colors.black,
            bottom: AppBar(
              backgroundColor: Colors.black,
              title: Text("Suggested play list",
                  style: GoogleFonts.alegreyaSans(
                      color: Colors.pink[100],
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 170.0,
                          child: Card(
                            color: Colors.black,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(img[index])))),
                          )));
                },
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Text("Recommended for you",
                    style: GoogleFonts.alegreyaSans(
                        color: Colors.pink[50],
                        fontSize: 26,
                        fontWeight: FontWeight.bold)),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui3.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("Hero",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("Taylor Swift",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),
                  // Icon(Icons.download_outlined,color: Colors.pink[50],)

                ),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui1.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("Unholy",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("Sam Smith",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),

                ),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui2.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("Lift me up",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("Rihanna",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),

                ),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui5.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("Depression",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("Dax",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),

                ),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui6.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("I am God",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("David & Bebe Rexha",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),

                ),
                ListTile(
                  leading: Container(
                    width: 60,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/mui7.jpg")),
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                  ),
                  title: Text("Hero",
                    style: TextStyle(fontSize: 20, color: Colors.pink[50]),),
                  subtitle: Text("Taylor Swift",
                    style: TextStyle(fontSize: 15, color: Colors.pink[50]),),
                  trailing:
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Colors.pink[50],),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.download_outlined, color: Colors.pink[50],),
                      ),
                    ],
                  ),

                ),

              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Colors.black,
        onButtonPressed: (index) {
          setState(() {
            selectedIndex = index;
          });
          controller.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        activeColor: Colors.pink.shade50,
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
          ),
          BarItem(
            icon: Icons.book,
            title: 'library',
          ),
          BarItem(
            icon: Icons.more_horiz,
            title: 'more',
          ),

        ],
      ),

    );
  }
}

