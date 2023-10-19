import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

import 'music_ui_1.dart';
import 'music_ui_2.dart';
import 'music_ui_3.dart';

void main(){
  runApp(MaterialApp(home: BottomMusic(),));
}
class BottomMusic extends StatefulWidget {
  const BottomMusic({super.key});

  @override
  State<BottomMusic> createState() => _BottomMusicState();
}

class _BottomMusicState extends State<BottomMusic> {
  int selectedIndex=0;
  var screens = [
    Music_ui_2(),
    Music_Ui_1(),
    Music_Ui_1(),
    Music_ui_3(),
  ];

  get controller => null;

  get index => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: screens[index],
    );

  }
}
