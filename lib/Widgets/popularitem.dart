import 'package:flutter/material.dart';

import '../Screens/detailscreen.dart';

class PopularItem extends StatelessWidget {
  const PopularItem({Key? key, required this.data}) : super(key: key);
  final Map data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(DetailScreen.routeName);
        },
        child: Container(
          height: 150,
          width: 150,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(13)),
            child: Image.asset(
              "${data["image"]}",
              height: 225,
              width: 280,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
