import 'package:ecomerce_design/Store/MyStore.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_design/HomePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        return MyStore();
      },
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: HomePage(),
//       //MyHomePage(),
//       theme: ThemeData(
//         fontFamily: "poppins",
//       ),
//     );
//   }
// }
