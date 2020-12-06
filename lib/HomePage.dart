import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:ecomerce_design/BasketPage.dart';
import 'package:ecomerce_design/Pages/SignInPage.dart';
import 'package:ecomerce_design/Pages/SignUpPage.dart';
import 'package:ecomerce_design/ProductPage.dart';
import 'package:ecomerce_design/Store/MyStore.dart';

import 'package:ecomerce_design/widgets/CategoryItem.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerSlider = [
    "assets/banner/as.jpg",
    "assets/banner/banner1.jpg",
    "assets/banner/banner2.png",
    "assets/banner/company.jpg",
    "assets/banner/gu.jpg",
    "assets/banner/work.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<MyStore>(context);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Homepage",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            (EvaIcons.menu2Outline),
          ),
        ),
        actions: [
          Badge(
            position: BadgePosition.topEnd(top: 0, end: 3),
            badgeContent: Text(
              store.basket.length.toString(),
              style: TextStyle(color: Colors.white),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BasketPage()));
                //
                // setState(() {
                //   _counter += 1;
                // });

                //
              },
              icon: Icon(EvaIcons.shoppingCart),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     "Category",
              //     style: TextStyle(
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 60,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     shrinkWrap: true,
              //     children: <Widget>[
              //       CategoryItem(
              //         Colors.amber,
              //         40,
              //         EvaIcons.giftOutline,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //       CategoryItem(
              //         Colors.cyan,
              //         40,
              //         EvaIcons.people,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //       CategoryItem(
              //         Colors.indigo,
              //         40,
              //         EvaIcons.gift,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //       CategoryItem(
              //         Colors.cyan,
              //         40,
              //         EvaIcons.battery,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //       CategoryItem(
              //         Colors.purple,
              //         40,
              //         EvaIcons.battery,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //       CategoryItem(
              //         Colors.brown,
              //         40,
              //         EvaIcons.globe,
              //         EdgeInsets.all(10),
              //         EdgeInsets.only(left: 10),
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100.0,
                //width: 350.0,
                width: MediaQuery.of(context).size.height,

                child: Carousel(
                  images: [
                    Image.asset('assets/banner/as.jpg'),
                    Image.asset('assets/banner/banner1.jpg'),
                    Image.asset('assets/banner/banner2.png'),
                    Image.asset('assets/banner/company.jpg'),
                    Image.asset('assets/banner/gu.jpg'),
                    Image.asset('assets/banner/work.jpg'),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  dotBgColor: Colors.purple.withOpacity(0.5),
                  borderRadius: true,
                ),
              ),
              SizedBox(
                height: 100.0,
                width: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/banner/you.png',
                  fit: BoxFit.fill,
                ),
              ),

              // //banner add slider
              // CarouselSlider(
              //   options: CarouselOptions(
              //     aspectRatio: 16 / 9,
              //     autoPlay: true,
              //   ),
              //   items: bannerSlider.map((i) {
              //     return Builder(
              //       builder: (BuildContext context) {
              //         return Container(
              //           width: MediaQuery.of(context).size.width,
              //           margin: EdgeInsets.symmetric(horizontal: 10.0),
              //           child: ClipRRect(
              //             borderRadius: BorderRadius.circular(16),
              //             child: Image(
              //               image: AssetImage(i),
              //               fit: BoxFit.cover,
              //               alignment: Alignment.topCenter,
              //             ),
              //           ),
              //         );
              //       },
              //     );
              //   }).toList(),
              // ),
              //banner add slider
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(
                        Colors.amber,
                        60,
                        EvaIcons.giftOutline,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                        "Digital Seba"),
                    CategoryItem(
                        Colors.cyan,
                        60,
                        EvaIcons.people,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                        "Best Sellers"),
                    CategoryItem(
                        Colors.indigo,
                        60,
                        EvaIcons.gift,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                        "Discounts"),
                    CategoryItem(
                        Colors.cyan,
                        60,
                        EvaIcons.battery,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                        "Anaz MAll"),
                    CategoryItem(
                        Colors.purple,
                        60,
                        EvaIcons.battery,
                        EdgeInsets.all(10),
                        EdgeInsets.only(left: 10),
                        "Global Collection"),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Category',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.yellowAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(
                height: 190,
                child: GridView.count(
                  crossAxisCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                          Colors.amber,
                          60,
                          EvaIcons.giftOutline,
                          EdgeInsets.all(10),
                          EdgeInsets.only(left: 10),
                          ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(Colors.cyan, 60, EvaIcons.people,
                          EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(Colors.indigo, 60, EvaIcons.gift,
                          EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(Colors.cyan, 60, EvaIcons.battery,
                          EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(Colors.purple, 60, EvaIcons.battery,
                          EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(Colors.brown, 60, EvaIcons.globe,
                          EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'ANAZ MALL SELLERS',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.yellowAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(Colors.amber, 60, EvaIcons.giftOutline,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.people,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.indigo, 60, EvaIcons.gift,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.purple, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.brown, 60, EvaIcons.globe,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'PREMIUM SELLERS',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(Colors.amber, 60, EvaIcons.giftOutline,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.people,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.indigo, 60, EvaIcons.gift,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.purple, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.brown, 60, EvaIcons.globe,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Collection',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.blueGrey,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: <Widget>[
                    CategoryItem(Colors.amber, 60, EvaIcons.giftOutline,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.people,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.indigo, 60, EvaIcons.gift,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.cyan, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.purple, 60, EvaIcons.battery,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                    CategoryItem(Colors.brown, 60, EvaIcons.globe,
                        EdgeInsets.all(10), EdgeInsets.only(left: 10), ""),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Products',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    color: Colors.pinkAccent,
                    child: Text(
                      'View All',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 19),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Text(
              //     "Products",
              //     style: TextStyle(
              //       fontSize: 20,
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),

              GridView.builder(
                //scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: store.products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () {
                      //set item on as a active product
                      store.setActiveProduct(store.products[i]);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductPage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Container(
                                height: 130,
                                child: Hero(
                                  tag: store.products[i].image,
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Image(
                                      image:
                                          AssetImage(store.products[i].image),
                                    ),
                                  ),
                                ),
                              ),
                              Text(store.products[i].name),
                              Text(store.products[i].price.toString()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ); //Text(store.products[i].name);
                },
              ),

              // GridView.count(
              //   physics: ClampingScrollPhysics(),
              //   crossAxisCount: 2,
              //   shrinkWrap: true,
              //   childAspectRatio: 1 / 1.3,
              //   children: store.productItem.map(
              //     (products) {
              //       return Card(
              //         child: Stack(
              //           children: [
              //             Container(
              //               child: Column(
              //                 children: [
              //                   Hero(
              //                     tag: store.productItem[products].image,
              //                     child: AspectRatio(
              //                       aspectRatio: 1 / 1,
              //                       child: Image(
              //                         image: AssetImage(products.image),
              //                       ),
              //                     ),
              //                   ),
              //                   Text(products.name),
              //                   Text(
              //                     "${products.price}\$",
              //                     style: TextStyle(
              //                         fontSize: 17,
              //                         color: Colors.amber,
              //                         fontWeight: FontWeight.w400),
              //                   ),
              //                 ],
              //               ),
              //             ),
              //             Material(
              //               color: Colors.transparent,
              //               child: InkWell(
              //                 onTap: () {
              //                     store.setActiveProduct(store.products[i]);
              //                   Navigator.push(
              //                     context,
              //                     MaterialPageRoute(
              //                       builder: (context) => ProductPage(),
              //                     ),
              //                   );
              //                 },
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ).toList(),
              // ),
            ],
          ),
        ),
      ),
      //     floatingActionButton: FloatingActionButton(
      //       onPressed: (){},
      //       child: Icon(EvaIcons.alertCircle),

      //     //params
      //  ),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart),
      //       label: 'Cart',
      //       backgroundColor: Colors.black,
      //     ),
      //     BottomNavigationBarItem(

      //       icon: Icon(EvaIcons.wifi),
      //       label: 'WishList',
      //       backgroundColor: Colors.black,
      //     ),
      //      BottomNavigationBarItem(
      //       icon: Icon(Icons.people),
      //       label: 'Account',
      //       backgroundColor: Colors.black,
      //     ),
      //   ],

      // ),

      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.home,
            title: "Home",
            onclick: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
          TabData(
            iconData: Icons.shopping_cart,
            title: "Basket",
            onclick: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BasketPage()));
            },
          ),
          TabData(iconData: EvaIcons.starOutline, title: "WishList"),
          TabData(
              iconData: Icons.people_alt_sharp,
              title: "Account",
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              }),
        ],
        onTabChangedListener: (position) {
          // setState(() {
          // currentPage = position;
          // });
        },
      ),
    );
  }
}
