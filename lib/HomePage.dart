import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:ecomerce_design/widgets/CategoryItem.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ProductPage.dart';

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
          IconButton(
            onPressed: () {},
            icon: Icon(EvaIcons.shoppingBagOutline),
          )
        ],
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              //height: constrains.maxHeight,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  verticalDirection: VerticalDirection.down,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          CategoryItem(
                            Colors.amber,
                            10,
                            EvaIcons.giftOutline,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                          CategoryItem(
                            Colors.cyan,
                            10,
                            EvaIcons.people,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                          CategoryItem(
                            Colors.indigo,
                            10,
                            EvaIcons.gift,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                          CategoryItem(
                            Colors.cyan,
                            10,
                            EvaIcons.battery,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                          CategoryItem(
                            Colors.purple,
                            10,
                            EvaIcons.battery,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                          CategoryItem(
                            Colors.brown,
                            10,
                            EvaIcons.globe,
                            EdgeInsets.all(10),
                            EdgeInsets.only(left: 10),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    //banner add slider
                    CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                      ),
                      items: bannerSlider.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image(
                                  image: AssetImage(i),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    //banner add slider

                    SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Products",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    new Checkbox(
                        value: false,
                        onChanged: (bool newValue) {
                          Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new MyHomePage()),
                          );
                        }),
                  ],
                ),
              ),
            ),

            /* SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: MyHomePage(),
            ),*/
          ],
        ),
      ),
    );
  }
}
