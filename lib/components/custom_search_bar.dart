import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final searchController = TextEditingController();
  
  CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 5.0),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              iconColor: Colors.grey,
              hintText: 'Search',
              hintStyle: TextStyle(fontSize: 18.0)),
        ),
      ),
    );
  }
}
