import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:furniture_app/Widgets/popularitem.dart';

import '../moduls/data.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = "/DetailScreen";

  availableProduct() {
    return Container(
      height: 140.0,
      width: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          Map data2 = data[index];
          return PopularItem(
            data: data2,
          );
        },
      ),
    );
  }

  flottingActionButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: FloatingActionButton(
        onPressed: () {},
        elevation: 5,
        backgroundColor: Colors.orange,
        child: const Icon(
          Feather.plus,
          color: Colors.white,
        ),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: const Icon(Feather.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
            const SizedBox(
              width: 25,
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          children: [
            const SizedBox(height: 10.0),
            Container(
              height: 240.0,
              width: 300,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "${data[0]["image"]}",
                      height: 220.0,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    bottom: 30.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {},
                        // fillColor: Colors.white,
                        // shape: CircleBorder(),
                        // elevation: 4.0,
                        icon: const Icon(
                          Feather.heart,
                          color: Colors.amber,
                          size: 17.0,
                        ),
                        //child: const Padding(
                        //   padding: EdgeInsets.all(5),
                        //   child:
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              data[0]["name"],
              style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "₹550.00",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 15.0),
            const Text(
              "Description",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Furniture World. A great tale that began in 1957."
              " So, that mostly summarizes our stalwart presence"
              " in the furniture industry that has gone through"
              " several tests and trails of time. From providing"
              " top end furniture products to promising and satisfying"
              " services, Furniture World has progressed substantially"
              " in growth and satisfying our customers. We provide an"
              " array of diverse which set the standards and raised"
              " the bar in our competitive world.",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Photos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            availableProduct(),
          ],
        ),
        floatingActionButton: flottingActionButton());
  }
}
