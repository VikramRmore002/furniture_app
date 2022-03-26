import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:furniture_app/Screens/myhomepage.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index){
        setState(() {
          tab = index;
        });
        print(index);
        print(tab);
       // Navigator.of(context).pushNamed(MyHomePage.routeName);
      },
      type:BottomNavigationBarType.fixed,
      selectedItemColor: Colors.amber,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
       currentIndex: tab,


      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Home",
          icon: Icon(
            Feather.home,
            //color: Colors.grey,
          ),

        ),
        BottomNavigationBarItem(
          label: "Favorite",
          icon: Icon(
            Feather.heart,
           // color: Colors.grey,
          ),

        ),
        BottomNavigationBarItem(
          label: "Account",
          icon: Icon(
            Feather.user,
            //color: Colors.grey,
          ),

        ),
        BottomNavigationBarItem(
          label: "Categories",
          icon: Icon(
            Feather.grid,
           // color: Colors.grey,
          ),

        ),
      ],
    );
  }
}
