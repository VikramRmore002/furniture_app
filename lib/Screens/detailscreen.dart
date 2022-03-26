import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:furniture_app/Widgets/popularitem.dart';

import '../moduls/data.dart';

class DetailScreen extends StatefulWidget {
  static const routeName = "/DetailScreen";

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool tapped = false;

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
    return DraggableFab(
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
        body: SafeArea(
          minimum: EdgeInsets.only(top: 10),
          top: true,
          //bottom: true,
          child: Container(
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top * 0.2 ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(Feather.shopping_cart),
                    ),
                  ]),
                ),
                // const SizedBox(height: 10.0),
                Container(
                  height: MediaQuery.of(context).size.height * 0.87,
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    children: [
                      // const SizedBox(height: 10.0),
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
                                radius: 20,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  color: Colors.white,
                                  onPressed: () {
                                    setState(() {
                                      if(tapped == false ) {
                                        tapped = true;
                                      }else{
                                        tapped = false;
                                      }

                                    });
                                  },
                                  // fillColor: Colors.white,
                                  // shape: CircleBorder(),
                                  // elevation: 4.0,
                                  icon:  Icon(
                                   tapped == false ? Feather.heart : Icons.favorite ,
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
                        style: const TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "₹550.00",
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 15.0),
                      const Text(
                        "Description",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      availableProduct(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: flottingActionButton());
  }
}
