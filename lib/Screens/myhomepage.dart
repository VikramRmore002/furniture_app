import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:furniture_app/moduls/data.dart';
import 'package:furniture_app/Widgets/popularitem.dart';
import 'package:furniture_app/Widgets/searchbar.dart';
import '../Widgets/custombottomnavigatiombar.dart';
import '../Widgets/furnitureitem.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static const routeName = "/myhomepage";

  FurnitureList() {
    return Container(
      height: 275,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          Map data1 = data[index];

          return FurnitureItem(
            data: data1,
          );
        },
      ),
    );
  }

  nameRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "Popular Products",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          child: const Text(
            "View More",
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  availableProduct() {
    return Container(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          Map data2 = data.reversed.toList()[index];

          return PopularItem(
            data: data2,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     IconButton(
      //       icon: const Icon(Feather.shopping_cart, color: Colors.black),
      //       onPressed: () {},
      //     ),
      //     const SizedBox(
      //       width: 25,
      //     )
      //   ],
      // ),
      body: SafeArea(
         top: true,
        bottom: true,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [Icon(Feather.shopping_cart)],
            ),
          ),
          const SizedBox(height: 20.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "What are you \nlooking for?",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.only(right: 20.0,left: 20),
            child: SearchBar(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.59,
            child: ListView(
              padding: EdgeInsets.only(left: 20.0),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                const SizedBox(height: 20.0),
                FurnitureList(),
                const SizedBox(height: 10.0),
                nameRow(),
                const SizedBox(height: 10.0),
                availableProduct(),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
