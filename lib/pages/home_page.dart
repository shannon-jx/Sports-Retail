import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:shop/components/custom_drawer.dart';
import 'package:shop/components/custom_search_bar.dart';
import 'package:shop/components/product.dart';
import 'package:shop/components/tile.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/cover_page.dart';
import 'package:shop/pages/explore_page.dart';
import 'package:shop/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  final searchController = TextEditingController();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    HomePage(),
    const ExplorePage(),
    const CartPage(),
    const ProfilePage()
  ];

  void navigateDestination(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => pages[index],
        ));
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: CustomSearchBar(),
          ),
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
                height: 180,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/banner.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.black,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15.0, bottom: 15.0),
                      /*child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.black
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'EXPLORE',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),*/
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Popular',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                ),
                Text(
                  'See more',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Product prod = Product(
                  name: 'Classic Sports Bra',
                  price: '\$45.00',
                  image: 'assets/black sports bra.jpg',
                  desc: '\'Bold Black\'');
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Tile(
                    prod: prod,
                  ),
                );
              } else if (index == 3) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Tile(
                    prod: prod,
                  ),
                );
              } else {
                return Tile(
                  prod: prod,
                );
              }
            },
          )),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
            left: 20.0, right: 20.0, bottom: 15.0, top: 10.0),
        child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(50.0))),
            child: BottomAppBar(
              elevation: 30.0,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigateDestination(0);
                    },
                    child: Image.asset(
                      (selectedIndex == 0)
                          ? 'assets/home (1).png'
                          : 'assets/home.png',
                      color: (selectedIndex == 0)
                          ? Colors.white
                          : Colors.grey.shade800,
                      height: (selectedIndex == 0) ? 30.0 : 25.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateDestination(1);
                    },
                    child: Image.asset(
                      (selectedIndex == 1)
                          ? 'assets/search (1).png'
                          : 'assets/search.png',
                      color: (selectedIndex == 1)
                          ? Colors.white
                          : Colors.grey.shade800,
                      height: (selectedIndex == 1) ? 40.0 : 25.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateDestination(2);
                    },
                    child: Image.asset(
                      (selectedIndex == 2)
                          ? 'assets/shopping-bag (1).png'
                          : 'assets/shopping-bag.png',
                      color: (selectedIndex == 2)
                          ? Colors.white
                          : Colors.grey.shade800,
                      height: (selectedIndex == 2) ? 35.0 : 25.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateDestination(3);
                    },
                    child: Image.asset(
                      (selectedIndex == 3)
                          ? 'assets/profile (1).png'
                          : 'assets/profile.png',
                      color: (selectedIndex == 3)
                          ? Colors.white
                          : Colors.grey.shade800,
                      height: (selectedIndex == 3) ? 35.0 : 25.0,
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
