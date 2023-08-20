import 'package:flutter/material.dart';
import 'package:shop/components/custom_drawer.dart';
import 'package:shop/pages/cart_page.dart';
import 'package:shop/pages/explore_page.dart';
import 'package:shop/pages/home_page.dart';
import 'package:shop/pages/profile_page.dart';

class CustomNavBar extends StatefulWidget {
  int selectedIndex;

  CustomNavBar({super.key, required this.selectedIndex});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {

  List<Widget> pages = [
    CustomDrawer(),
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
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    (widget.selectedIndex == 0)
                        ? 'assets/home (1).png'
                        : 'assets/home.png',
                    color: (widget.selectedIndex == 0)
                        ? Colors.white
                        : Colors.grey.shade800,
                    height: (widget.selectedIndex == 0) ? 30.0 : 25.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    navigateDestination(1);
                  },
                  child: Image.asset(
                    (widget.selectedIndex == 1)
                        ? 'assets/search (1).png'
                        : 'assets/search.png',
                    color: (widget.selectedIndex == 1)
                        ? Colors.white
                        : Colors.grey.shade800,
                    height: (widget.selectedIndex == 1) ? 40.0 : 25.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    navigateDestination(2);
                  },
                  child: Image.asset(
                    (widget.selectedIndex == 2)
                        ? 'assets/shopping-bag (1).png'
                        : 'assets/shopping-bag.png',
                    color: (widget.selectedIndex == 2)
                        ? Colors.white
                        : Colors.grey.shade800,
                    height: (widget.selectedIndex == 2) ? 35.0 : 25.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    navigateDestination(3);
                  },
                  child: Image.asset(
                    (widget.selectedIndex == 3)
                        ? 'assets/profile (1).png'
                        : 'assets/profile.png',
                    color: (widget.selectedIndex == 3)
                        ? Colors.white
                        : Colors.grey.shade800,
                    height: (widget.selectedIndex == 3) ? 35.0 : 25.0,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
