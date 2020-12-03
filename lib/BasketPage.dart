import 'package:badges/badges.dart';
import 'package:ecomerce_design/HomePage.dart';
import 'package:ecomerce_design/Store/MyStore.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BasketPage extends StatefulWidget {
  @override
  _BasketPageState createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  // double sum = 0;

  @override
  Widget build(BuildContext context) {
//register Listener
    var store = Provider.of<MyStore>(context);

    // total(Product p) {
    //   // store.basket.forEach((element) {
    //   //sum = sum + p.price;
    //   // }
    //   //);
    //   store.basket.forEach((element) {
    //     if (element.qty != null) {
    //       sum =  sum  + element.price;
    //       print(sum);
    //     }
    //   });
    // }

    //

    return Scaffold(
        appBar: AppBar(
          title: Text("Basket Page"),
          // actions: [
          //   InkWell(
          //       onTap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => BasketPage()));
          //       },
          //       child: Text(store.basket.length.toString())),
          // ],
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
        body: ListView.builder(
            itemCount: store.basket.length,
            itemBuilder: (context, i) {
              // total(store.basket[i]); //Run the total() function here

              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          store.basket[i].image,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Text(
                              (store.basket[i].price * store.basket[i].qty)
                                  .toString())),
                      Expanded(flex: 1, child: Text(store.basket[i].name)),
                      Expanded(
                        flex: 4,
                        child: Container(
                          width: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    store.addOneItemtoBasket(store.basket[i]);
                                  }),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.amber)),
                                child: Text(store.basket[i].qty.toString()),
                              ),
                              IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    store
                                        .removeOneItemtoBasket(store.basket[i]);
                                  }),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              );
            }),
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

// class BasketPag extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double sum = 0;
//     //
//     //register Listener
//     var store = Provider.of<MyStore>(context);
// //
//     //
//     // return Scaffold(
//     //   appBar: AppBar(
//     //     title: Text("Basket Page"),
//     //     // actions: [
//     //     //   InkWell(
//     //     //       onTap: () {
//     //     //         Navigator.push(context,
//     //     //             MaterialPageRoute(builder: (context) => BasketPage()));
//     //     //       },
//     //     //       child: Text(store.basket.length.toString())),
//     //     // ],
//     //     actions: [
//     //       Badge(
//     //         position: BadgePosition.topEnd(top: 0, end: 3),
//     //         badgeContent: Text(
//     //           store.basket.length.toString(),
//     //           style: TextStyle(color: Colors.white),
//     //         ),
//     //         child: IconButton(
//     //           onPressed: () {
//     //             Navigator.push(context,
//     //                 MaterialPageRoute(builder: (context) => BasketPage()));
//     //             //
//     //             // setState(() {
//     //             //   _counter += 1;
//     //             // });

//     //             //
//     //           },
//     //           icon: Icon(EvaIcons.shoppingCart),
//     //         ),
//     //       ),
//     //     ],
//     //   ),
//     //   body: ListView.builder(
//     //       itemCount: store.basket.length,
//     //       itemBuilder: (context, i) {
//     //         return Row(
//     //           children: [
//     //             Expanded(
//     //               flex: 2,
//     //               child: Image.network(
//     //                 store.basket[i].image,
//     //                 height: 50,
//     //                 width: 50,
//     //               ),
//     //             ),
//     //             Expanded(
//     //                 flex: 2,
//     //                 child: Text((store.basket[i].price * store.basket[i].qty)
//     //                     .toString())),
//     //             Expanded(flex: 1, child: Text(store.basket[i].name)),
//     //             Expanded(
//     //               flex: 4,
//     //               child: Container(
//     //                 width: 10,
//     //                 decoration:
//     //                     BoxDecoration(border: Border.all(color: Colors.blue)),
//     //                 child: Row(
//     //                   mainAxisAlignment: MainAxisAlignment.center,
//     //                   children: [
//     //                     IconButton(
//     //                         icon: Icon(Icons.add),
//     //                         onPressed: () {
//     //                           store.addOneItemtoBasket(store.basket[i]);
//     //                         }),
//     //                     Container(
//     //                       decoration: BoxDecoration(
//     //                           border: Border.all(color: Colors.amber)),
//     //                       child: Text(store.basket[i].qty.toString()),
//     //                     ),
//     //                     IconButton(
//     //                         icon: Icon(Icons.remove),
//     //                         onPressed: () {
//     //                           store.removeOneItemtoBasket(store.basket[i]);
//     //                         }),
//     //                   ],
//     //                 ),
//     //               ),
//     //             ),
//     //             SizedBox(
//     //               height: 30,
//     //             ),
//     //             // Row(
//     //             //   children: [
//     //             //     Text("Total"),
//     //             //     Text(store.basket[i].qty.toString()),
//     //             //   ],
//     //             // ),
//     //           ],
//     //         );
//     //       }),
//     // );
//   }
// }
