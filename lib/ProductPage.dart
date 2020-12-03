import 'package:badges/badges.dart';
import 'package:ecomerce_design/BasketPage.dart';
import 'package:ecomerce_design/HomePage.dart';
import 'package:ecomerce_design/Store/MyStore.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatelessWidget {
  // final Product products;

  // ProductPage({this.products});

  @override
  Widget build(BuildContext context) {
    //register Listener
    var store = Provider.of<MyStore>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            store.activeProducts.name,
            style: TextStyle(color: Colors.black),
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
        // body: Container(
        //   child: SingleChildScrollView(
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         Hero(
        //           tag: store.activeProducts.image,
        //           child: AspectRatio(
        //             aspectRatio: 1 / 1,
        //             child: Image(
        //               image: AssetImage(store.activeProducts.image),
        //             ),
        //           ),
        //         ),
        //         Text(store.activeProducts.name),
        //         Padding(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //           child: Text(
        //             "${store.activeProducts.price}\$",
        //             style: TextStyle(
        //                 fontSize: 17,
        //                 color: Colors.amber,
        //                 fontWeight: FontWeight.w400),
        //           ),
        //         ),
        //         Padding(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //           child: Row(
        //             children: [
        //               OutlinedButton.icon(
        //                   onPressed: () {
        //                     store.addOneItemtoBasket(store.activeProducts);
        //                   },
        //                   icon: Icon(EvaIcons.shoppingCart),
        //                   label: Text("Cart")),
        //               OutlinedButton.icon(
        //                   onPressed: () {},
        //                   icon: Icon(EvaIcons.creditCard),
        //                   label: Text("Buy Now")),
        //             ],
        //           ),
        //         ),

        //         // Text(store.activeProducts.qty.toString()),
        //       ],
        //     ),
        //   ),
        // ),

        body: Container(
          child: Column(
            children: [
              Text(store.activeProducts.name),
              // Image.asset(store.activeProducts.image),

              Image.asset(store.activeProducts.image),
              Text(store.activeProducts.price.toString()),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   width: 150,
              //   decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       IconButton(
              //           icon: Icon(Icons.add),
              //           onPressed: () {
              //             store.addOneItemtoBasket(store.activeProducts);
              //           }),
              //       Container(
              //         decoration:
              //             BoxDecoration(border: Border.all(color: Colors.amber)),
              //         child: Text(store.activeProducts.qty.toString()),
              //       ),
              //       IconButton(
              //           icon: Icon(Icons.remove),
              //           onPressed: () {
              //             store.removeOneItemtoBasket(store.activeProducts);
              //           }),
              //     ],
              //   ),
              // ),

              FlatButton(
                onPressed: () {
                  store.addOneItemtoBasket(store.activeProducts);
                },
                child: Text("Add to Cart"),
                color: Colors.pink,
              )
            ],
          ),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
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
            TabData(iconData: Icons.people_alt_sharp, title: "Account"),
          ],
          onTabChangedListener: (position) {
            // setState(() {
            // currentPage = position;
            // });
          },
        ));
  }
}
