import 'package:flutter/material.dart';
import 'package:ecomerce_design/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //MyHomePage(),
      theme: ThemeData(
        fontFamily: "poppins",
      ),
    );
  }
}
