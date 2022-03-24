import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type:BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      // currentIndex: 0,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Feather.home,
            color: Colors.grey,
          ),
          //  label: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          label: "Favorite",
          icon: Icon(
            Feather.heart,
            color: Colors.grey,
          ),
          //  label: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          label: "Account",
          icon: Icon(
            Feather.user,
            color: Colors.grey,
          ),
          // title: Container(height: 0.0),
        ),
        BottomNavigationBarItem(
          label: "Categories",
          icon: Icon(
            Feather.grid,
            color: Colors.grey,
          ),
          // title: Container(height: 0.0),
        ),
      ],
    );
  }
}
