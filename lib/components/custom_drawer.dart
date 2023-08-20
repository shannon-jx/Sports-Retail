import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:shop/pages/cover_page.dart';
import 'package:shop/pages/home_page.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      contentCornerRadius: 50.0,
      slidePercent: 50,
      leadingAppBar: Image.asset(
        'assets/menu.png',
        color: Colors.black,
        height: 25.0,
      ),
      isTitleCentered: true,
      withAutoTittleName: false,
      backgroundColorAppBar: Colors.grey.shade300,
      elevationAppBar: 0,
      backgroundColorMenu: Colors.grey.shade900,
      screens: [
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Home Page',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          HomePage(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Men',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          HomePage(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Women',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          HomePage(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Footwear',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          HomePage(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Equipments',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          HomePage(),
        ),
        ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'Logout',
              colorLineSelected: Colors.white,
              baseStyle: TextStyle(
                color: Colors.white,
                fontSize: 20.0
              ),
              selectedStyle: TextStyle()),
          CoverPage(),
        )
      ],
    );
  }
}
