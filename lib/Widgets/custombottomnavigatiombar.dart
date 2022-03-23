import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
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
