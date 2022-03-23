import 'package:flutter/material.dart';
import 'package:furniture_app/Screens/detailscreen.dart';

class FurnitureItem extends StatelessWidget {
  const FurnitureItem({Key? key, required this.data}) : super(key: key);
  final  Map data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(DetailScreen.routeName);
        },
        child: Container(
          height: 275,
          width: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 7),
            child: Text(data["name"],style: const TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
          ),
            // const SizedBox(height: 10,),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(13)),
              child: Image.asset(
                "${data["image"]}",
                height: 225,
                width: 280,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
