import 'package:flutter/material.dart';

import 'view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unsplash Pictures',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(50, 50, 50, 1),
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "Playfair",
              fontWeight: FontWeight.w900
            )
          ),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(50, 50, 50, 1),
        primarySwatch: Colors.grey,
      ),
      home: HomeScreen(),
    );
  }
}