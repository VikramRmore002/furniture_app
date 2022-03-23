

import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

final TextEditingController searchController = TextEditingController();

   SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: TextField(
          controller: searchController,
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(10.0),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10.0),
            //   borderSide: const BorderSide(
            //     color: Colors.white,
            //   ),
            // ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            // enabled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: "Search",
            focusColor: Colors.amber,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintStyle: const TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
          ),
          // maxLines: 1,
        ),
      ),
    );
  }
}
