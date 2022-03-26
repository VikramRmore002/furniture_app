import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/detailscreen.dart';


import 'Screens/myhomepage.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Furniture store",
      theme: ThemeData(
        primaryColor: Colors.white,
        backgroundColor: Colors.white,
        accentColor: Colors.amber,
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Quicksand",
        )),
        textTheme: ThemeData.light().textTheme.copyWith(
              // button: TextStyle(color: Colors.white),
              titleMedium: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black),
            ),
      ),
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
        accentColor: Colors.white70,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      routes:  {
        DetailScreen.routeName : (context) =>  DetailScreen( ),
        MyHomePage.routeName : (context) =>  MyHomePage( ),
      } ,
    );
  }
}
