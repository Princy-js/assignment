import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: Music_Ui_1(),
  ));
}

class Music_Ui_1 extends StatefulWidget {
  @override
  State<Music_Ui_1> createState() => _Music_Ui_1State();
}

class _Music_Ui_1State extends State<Music_Ui_1> {
  int selectedIndex=0;

  var img = [
    "assets/images/mui1.jpg",
    "assets/images/mui3.jpg",
    "assets/images/mui2.jpg",
    "assets/images/mui4.png",
    "assets/images/mui5.jpg",
    "assets/images/mui6.jpg",
    "assets/images/mui7.jpg",
    "assets/images/mui4.png",
  ];

  var text = [
    "Top 50",
    "Melody songs",
    "Rocking",
    "Car music",
    "Hot hits",
    "Romatic",
    "Tiktok songs",
    "Album songs"
  ];

  get controller => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Center(child: Text("Playlists",style: GoogleFonts.alegreyaSans(color: Colors.pink[100],fontSize: 36,fontWeight: FontWeight.bold),)),
            backgroundColor: Colors.black,
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    border: Border.all(color:Colors.pink.shade100)),
                width: double.infinity,
                height: 40,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "  search....",
                      hintStyle: TextStyle(color: Colors.white70),
                      suffixIcon: Icon(Icons.search, color: Colors.pink.shade100)),
                ),
              ),
            ),
          ),

         SliverGrid(delegate: SliverChildBuilderDelegate(
           childCount: 8,
                 (context, index) => Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Container(
                      width: 150,
                     height: 160,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(20),
                       ),
                       image: DecorationImage(
                           fit: BoxFit.cover,
                           image: AssetImage(img[index]))
                     ),
                     child: Align(
                       alignment: Alignment.center,
                       child: Text(text[index], style: GoogleFonts.abhayaLibre(
                         fontWeight: FontWeight.bold,
                         fontSize: 25,
                         color: Colors.white
                       ),
                       textAlign: TextAlign.justify,),
                     ),
                   ),
                 )),
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
               //   crossAxisSpacing: 20,
               // mainAxisSpacing: 20
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
            title: 'playlist',
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
