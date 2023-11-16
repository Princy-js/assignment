//
// import 'package:assignment/assignment%2014_freshZone/refactoring%20pages/box1_refactor.dart';
// import 'package:assignment/assignment%2014_freshZone/refactoring%20pages/box2_refactor.dart';
// import 'package:assignment/assignment%2014_freshZone/refactoring%20pages/box3_refactor.dart';
// import 'package:assignment/assignment%2014_freshZone/refactoring%20pages/box4_refactor.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'cart.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: HomePageFFZ(),
//   ));
// }
//
// class HomePageFFZ extends StatefulWidget {
//   @override
//   State<HomePageFFZ> createState() => _HomePageFFZState();
// }
//
// class _HomePageFFZState extends State<HomePageFFZ> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     var text = [
//       'OFFERS',
//       'VEGITABLE',
//       'FRUITS',
//       'EXOTIC',
//       'FRESH CUTS',
//       'NUTRITION CHARGERS',
//       'GOURMET SALADS',
//       'PACKED FLAVOURS',
//     ];
//     var text1 = [
//       'Offers',
//       'Vegitables',
//       'Fruits',
//       'Exotic',
//       'Fresh Cuts',
//       'Nutrition Chargers',
//       'Packed Flavors',
//       'Gourmet Salads'
//     ];
//     var img = [
//       'assets/farmersFZ/offers.jpg',
//       'assets/farmersFZ/vegitables.jpg',
//       'assets/farmersFZ/fruits.jpg',
//       'assets/farmersFZ/exotic.jpg',
//       'assets/farmersFZ/fresh cuts.jpg',
//       'assets/farmersFZ/nutrition.jpg',
//       'assets/farmersFZ/black pepper.jpg',
//       'assets/farmersFZ/gourmet salads.jpg'
//     ];
//     var img2 = [
//       'assets/farmersFZ/ladisfing1.jpg',
//       'assets/farmersFZ/AMRGRN1.jpg',
//       'assets/farmersFZ/PNP51.jpg',
//       'assets/farmersFZ/saladcucu1.jpg',
//       'assets/farmersFZ/MUSRM1.jpg',
//       'assets/farmersFZ/KIWI4.jpg',
//       'assets/farmersFZ/CULFW1.jpg',
//       'assets/farmersFZ/CarrotSC.jpg',
//       'assets/farmersFZ/citrusOrange.jpg',
//       'assets/farmersFZ/AVCD.jpg',
//       'assets/farmersFZ/GRNAP3_(2).jpg',
//       'assets/farmersFZ/sambar.jpg',
//       'assets/farmersFZ/aviyal.jpg',
//       'assets/farmersFZ/Strawberries.jpg'
//     ];
//     var text2 = [
//       'Ladies Finger',
//       'Amaranthus Green',
//       'Pineapple semi-ripe',
//       'Salad Cucumber',
//       'Button Mushroom',
//       'Kiwi (3 Nos)',
//       'Cauliflower -1 Nos',
//       'Carrot Stick Cut',
//       'Citrus-Imported',
//       'Avocado semi-ripe',
//       'Green Appple',
//       'Sambar Cut Mini Pack',
//       'Avial Cut Familt pack',
//       'Strawbwrry 200g'
//     ];
//     var text3 = [
//       ' ₹28.2',
//       ' ₹19',
//       ' ₹99',
//       ' ₹27',
//       ' ₹78',
//       ' ₹199',
//       ' ₹55',
//       ' ₹49',
//       ' ₹139',
//       ' ₹285',
//       ' ₹159',
//       ' ₹59',
//       ' ₹89',
//       ' ₹175'
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF2DB457),
//         title: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(right: 80.0),
//               child: Text(
//                 'FARMERS FRESH ZONE',
//                 style: GoogleFonts.acme(color: Colors.white, fontSize: 19),
//               ),
//             ),
//             Icon(
//               Icons.location_on_outlined,
//               color: Colors.white,
//               size: 20,
//             ),
//             Text(
//               'Kochi',
//               style: TextStyle(color: Colors.white, fontSize: 20),
//             ),
//             Icon(
//               Icons.arrow_drop_down,
//               size: 30,
//               color: Colors.white,
//             )
//           ],
//         ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(60),
//           child: Padding(
//             padding:
//             const EdgeInsets.only(bottom: 18.0, top: 15, left: 6, right: 6),
//             child: Container(
//               width: double.infinity,
//               height: 47,
//               decoration: BoxDecoration(
//                   color: Colors.white, borderRadius: BorderRadius.circular(5)),
//               child: TextField(
//                 decoration: InputDecoration(
//                   prefixIcon: Icon(
//                     Icons.search,
//                     color: Colors.grey,
//                   ),
//                   hintText: 'Search for vegitables,fruits and products',
//                   hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
//                   border: InputBorder.none,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//
//       body: SingleChildScrollView(
//         child: Column(
//           // mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(
//               height: 52,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 12.0),
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: 8,
//                     itemBuilder: (context, index) {
//                       return Padding(
//                         padding: const EdgeInsets.only(left: 8.0, bottom: 10),
//                         child: MaterialButton(
//                           onPressed: () {},
//                           child: Text(
//                             text[index],
//                             style: TextStyle(color: Colors.green, fontSize: 10),
//                           ),
//                           color: Colors.green[100],
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(25)),
//                         ),
//                       );
//                     }),
//               ),
//             ),
//             CarouselSlider(
//                 items: [
//                   Container(
//                     width: double.infinity,
//                     height: 100,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fitWidth,
//                             image: AssetImage('assets/farmersFZ/slide1.jpeg'))),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 400,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fitWidth,
//                             image: AssetImage('assets/farmersFZ/slide2.jpeg'))),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     height: 400,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fitWidth,
//                             image: AssetImage('assets/farmersFZ/slide1.jpeg'))),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                         image: DecorationImage(
//                             fit: BoxFit.fitWidth,
//                             image: AssetImage('assets/farmersFZ/slide3.jpeg'))),
//                   )
//                 ],
//                 options: CarouselOptions(
//                   autoPlay: true,
//                   viewportFraction: 1.0,
//                   height: 180,
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: Container(
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(4),
//                   border: Border.all(
//                     color: Colors.green,
//                     width: .8,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: Row(
//                     children: [
//                       Column(
//                         children: [
//                           Image(
//                             image:
//                             AssetImage('assets/farmersFZ/vanicontwo.png'),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4.0, left: 4),
//                             child: Text(
//                               '30 MINS POLICY',
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.black54),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         width: 55,
//                       ),
//                       Column(
//                         children: [
//                           Image(
//                             image:
//                             AssetImage('assets/farmersFZ/traceability.png'),
//                             width: 30,
//                             height: 30,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4.0),
//                             child: Text(
//                               'TRACEABILITY',
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.black54),
//                             ),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         width: 55,
//                       ),
//                       Column(
//                         children: [
//                           Image(
//                             image: AssetImage('assets/farmersFZ/local.png'),
//                             width: 30,
//                             height: 30,
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 4.0),
//                             child: Text(
//                               'LOCALSOURCING',
//                               style: TextStyle(
//                                   fontSize: 10, color: Colors.black54),
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text(
//                     ' Shop By Category',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 SizedBox(height: 15,),
//                 GridView.builder(
//                     physics: NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: 8,
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 3),
//                     itemBuilder: (context, index) {
//                       return Box1(
//                           image: AssetImage(img[index]), text: text1[index]);
//                     }),
//               ],),
//             Padding(
//               padding: const EdgeInsets.only(top: 8.0, bottom: 12),
//               child: Container(
//                 color: Color(0xFFF2F3F2),
//                 child:
//                 Image(image: AssetImage('assets/farmersFZ/banner1.jpeg')),
//               ),
//             ),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Best Selling Products',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 )),
//             SizedBox(height: 15,),
//             GridView.builder(
//                 physics: NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: 14,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     mainAxisExtent: 270, crossAxisCount: 2),
//                 itemBuilder: (context, index) {
//                   return Box2(
//                       image: AssetImage(img2[index]),
//                       text1: text2[index],
//                       text2: text3[index],
//                       text3: '14% OFF',
//                       text4: ' 1.00 Box',
//                       click: () {});
//                 }),
//             MaterialButton(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(4)),
//               minWidth: 390,
//               height: 30,
//               color: Color(0xFF2DB457),
//               onPressed: () {},
//               child: Text(
//                 'VIEW MORE',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 5.0, bottom: 12),
//               child: Container(
//                 color: Color(0xFFF2F3F2),
//                 child:
//                 Image(image: AssetImage('assets/farmersFZ/banner2.jpeg')),
//               ),
//             ),
//             Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   'Our Blog Posts',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 )),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 240,
//               child: ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: [
//                   Box3(
//                       imageb: AssetImage('assets/farmersFZ/blog1.jpg'),
//                       textb: ' Control Blood \n Pressure'),
//                   Box3(
//                       imageb: AssetImage('assets/farmersFZ/blog2.jpg'),
//                       textb: ' Five Reasons why\n Broccoli '),
//                   Box3(
//                       imageb: AssetImage('assets/farmersFZ/blog3.jpg'),
//                       textb: ' Five tips that you\n prevent')
//                 ],
//               ),
//             ),
//             Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(bottom: 10.0),
//                   child: Text(
//                     'VIEW MORE',
//                     style: TextStyle(
//                         color: Color(0xFF2DB457), fontWeight: FontWeight.bold),
//                   ),
//                 )),
//             Container(
//               color: Color(0xFFE6E8E7),
//               child: Column(
//                 children: [
//                   SizedBox(height: 8,),
//                   Container(
//                     color: Colors.white,
//                     child: Column(
//                       children: [
//                         SizedBox(height: 12,),
//                         Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               'What Our Customers Say?',
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.bold),
//                             )),
//                         SizedBox(height: 12,),
//                         CarouselSlider(
//                             items: [
//                               Box4(image: AssetImage(
//                                   'assets/farmersFZ/profile1.jpg'),
//                                   text1: 'Dinesh Thambi',
//                                   text2: 'VP oerations, TCS',
//                                   text3: 'Being a customer of Farmers Fresh Zone, I can definitely'
//                                       ' say that I am extremely pleased with their service. '
//                                       'You can choose from a wide range of `safe- to - eat products,'
//                                       ' all of which are 100% Fresh & Natural. I appreciate their '
//                                       'efforts in providing healthy food to the customer & helping '
//                                       'the Ilvelihood of farmers at the same time.'),
//                               Box4(image: AssetImage(
//                                   'assets/farmersFZ/profile2.jpg'),
//                                   text1: 'Alosisous',
//                                   text2: 'Alosisous',
//                                   text3: 'As concerned parents. we wanted our kids to eat pesticide'
//                                       '-free & healthy food and that''s how we came across Farmers '
//                                       'Fresh Zone. Their fresh products & prompt delivery is the'
//                                       ' reason we have been a part of the Farmers Fresh Zone family'
//                                       ' for almost three years now. Farmers Fresh Zone Is the best'
//                                       ' solution to countless concerned parents like us!'),
//                               Box4(image: AssetImage(
//                                   'assets/farmersFZ/profile3.jpg'),
//                                   text1: 'Neethu Vipin',
//                                   text2: 'Clerk, Naval Base,Kochi',
//                                   text3: 'I tried Farmers Fresh Zone''s products for the first'
//                                       ' time when I was expecting a child. Finding safe, '
//                                       'chemical-free products in the city is difficult.'
//                                       ' But thanks to Farmers Fresh Zone, I was able to feed'
//                                       ' myself & my baby fruits and vegetables that are fresh, '
//                                       'healthy & 100% Safe-to-eat. FFZ has prompt delivery, '
//                                       'fresh & top quality products, my family & I are thoroughly '
//                                       'Impressed by their service!'),
//                               Box4(image: AssetImage(
//                                   'assets/farmersFZ/profile5.jpeg'),
//                                   text1: 'Shalini Warrier',
//                                   text2: 'Executive Director, Federal bank',
//                                   text3: 'As concerned parents. we wanted our kids to eat pesticide'
//                                       '-free & healthy food and that''s how we came across Farmers '
//                                       'Fresh Zone. Their fresh products & prompt delivery is the'
//                                       ' reason we have been a part of the Farmers Fresh Zone family'
//                                       ' for almost three years now. Farmers Fresh Zone Is the best'
//                                       ' solution to countless concerned parents like us!'),
//                               Box4(image: AssetImage(
//                                   'assets/farmersFZ/profile4.jpg'),
//                                   text1: 'Rinish K N',
//                                   text2: 'CTO, Rapid Value',
//                                   text3: 'I tried Farmers Fresh Zone''s products for the first'
//                                       ' time when I was expecting a child. Finding safe, '
//                                       'chemical-free products in the city is difficult.'
//                                       ' But thanks to Farmers Fresh Zone, I was able to feed'
//                                       ' myself & my baby fruits and vegetables that are fresh, '
//                                       'healthy & 100% Safe-to-eat. FFZ has prompt delivery, '
//                                       'fresh & top quality products, my family & I are thoroughly '
//                                       'Impressed by their service!')
//                             ],
//                             options: CarouselOptions(
//                               autoPlayInterval: Duration(seconds: 9),
//                               autoPlay: true,
//                               viewportFraction: 1.0,
//                             )),
//                         Container(
//                           color: Colors.white,
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 20.0),
//                                 child: Align(
//                                   alignment: Alignment.center,
//                                   child: Text(
//                                     'This Kochi-based- farm-to-fork online marketplate\n'
//                                         '    id connecting frames directly to customers',
//                                     style: TextStyle(fontSize: 15),),
//                                 ),
//                               ),
//                               SizedBox(height: 10,),
//                               Row(
//                                 children: [
//                                   SizedBox(width: 40,),
//                                   Image(image: AssetImage(
//                                       'assets/farmersFZ/news_1.png'),
//                                     width: 70,
//                                     height: 100,),
//                                   SizedBox(width: 40,),
//                                   Image(image: AssetImage(
//                                       'assets/farmersFZ/news_2.png'),
//                                     width: 30,
//                                     height: 50,),
//                                   SizedBox(width: 40,),
//                                   Image(image: AssetImage(
//                                       'assets/farmersFZ/news_3.png'),
//                                     width: 50,
//                                     height: 100,),
//                                   SizedBox(width: 40,),
//                                   Image(image: AssetImage(
//                                       'assets/farmersFZ/news_4.png'),
//                                     width: 50,
//                                     height: 100,)
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 8,),
//                 ],
//               ),
//             ),
//             Container(
//               child: Column(
//                 children: [
//                   SizedBox(height: 20,),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(' Get To Know Us')),
//                   SizedBox(height: 14,),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(' About Us  |  Our Farmers  |  Blog',
//                         style: TextStyle(color: Colors.grey, fontSize: 12),)),
//                   SizedBox(height: 8,),
//                   SizedBox(height: 20,),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text('Useful Links')),
//                   SizedBox(height: 14,),
//                   Align(
//                       alignment: Alignment.centerLeft,
//                       child: Text(
//                         ' Privacy Policy  |  Retuen & Refund Policy  |  Terms & Condition',
//                         style: TextStyle(color: Colors.grey, fontSize: 12),)),
//                   SizedBox(height: 8,)
//                 ],
//               ),
//             ),
//             SizedBox(height: 15,),
//             Row(
//               children: [
//                 SizedBox(width: 65,),
//                 FaIcon(FontAwesomeIcons.twitter, color: Colors.grey, size: 35,),
//                 SizedBox(width: 35,),
//                 FaIcon(FontAwesomeIcons.youtube, color: Colors.grey, size: 35,),
//                 SizedBox(width: 35,),
//                 FaIcon(
//                   FontAwesomeIcons.facebook, color: Colors.grey, size: 35,),
//                 SizedBox(width: 35,),
//                 FaIcon(
//                   FontAwesomeIcons.instagram, color: Colors.grey, size: 35,)
//               ],
//             ),
//             SizedBox(height: 15,),
//             Container(
//               width: double.infinity,
//               color: Color(0xFF2DB457),
//               child: Column(
//                 children: [
//                   SizedBox(height: 15,),
//                   Center(child: Text(
//                     'Copyright @ 2021 Farmers Fresh Zone. All Rights Reserved.',
//                     style: TextStyle(color: Colors.white, fontSize: 10),)),
//                   Center(child: Text('V 2.40.51',
//                     style: TextStyle(color: Colors.white, fontSize: 10),)),
//                   SizedBox(height: 20,),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedLabelStyle: TextStyle(color: Colors.green),
//         unselectedLabelStyle: TextStyle(color: Colors.grey),
//         type: BottomNavigationBarType.shifting,
//         currentIndex: _currentIndex, // Make sure to set the currentIndex
//         onTap: (index) {
//           // Add onTap callback to handle index changes
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(top: 18.0),
//               child: ImageIcon(
//                 AssetImage('assets/farmersFZ/logo.png'),
//                 color: Colors.grey, // Set initial color
//               ),
//             ),
//             activeIcon: Padding(
//               padding: const EdgeInsets.only(top: 18.0, right: 35),
//               child: ImageIcon(
//                 AssetImage('assets/farmersFZ/logo.png'),
//                 color: Colors.green, // Set selected color
//               ),
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Padding(
//               padding: const EdgeInsets.only(right: 35.0),
//               child: Icon(Icons.shopping_cart_outlined, color: Colors.grey),
//             ),
//             activeIcon: Icon(Icons.shopping_cart_outlined, color: Colors.green),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, color: Colors.grey),
//             activeIcon: Icon(Icons.person, color: Colors.green),
//             label: 'Account',
//           ),
//         ],
//       ),
//     );
//   }
// }
