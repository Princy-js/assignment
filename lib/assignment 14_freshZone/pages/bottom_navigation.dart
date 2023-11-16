import 'package:assignment/assignment%2014_freshZone/pages/account.dart';
import 'package:assignment/assignment%2014_freshZone/pages/cart.dart';
import 'package:assignment/assignment%2014_freshZone/pages/homepage.dart';
import 'package:assignment/assignment%2014_freshZone/pages/homesliver.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: BottomFFZ(),));
}
class BottomFFZ extends StatefulWidget {
  const BottomFFZ({super.key});

  @override
  State<BottomFFZ> createState() => _BottomFFZState();
}

class _BottomFFZState extends State<BottomFFZ> {
  int index = 0;
  var screens = [
    HomePageFFZ(),
    CartFFZ(),
    ProfileFFZ(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (tapedindex){
          setState(() {
            index = tapedindex;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ImageIcon(
                  AssetImage('assets/farmersFZ/logo.png'),
                  color: Colors.grey, // Set initial color
                ),
              ),
              activeIcon: Padding(
                padding: const EdgeInsets.only(top: 18.0,right: 35),
                child: ImageIcon(
                  AssetImage('assets/farmersFZ/logo.png'),
                  color: Colors.green, // Set selected color
                ),
              ),
              label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(right: 35.0),
              child: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
            ),
            activeIcon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.grey),
              activeIcon: Icon(Icons.person, color: Colors.green),
              label: 'Account'
          ),
        ],
      ),
    );
  }
}
