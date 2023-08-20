import 'package:flutter/material.dart';
import 'package:shop/components/custom_nav_bar.dart';
import 'package:shop/components/custom_search_bar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          CustomSearchBar()
        ],
      ),
      bottomNavigationBar: CustomNavBar(selectedIndex: 1,),
    );
  }
}