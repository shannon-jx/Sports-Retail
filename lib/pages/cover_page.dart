import 'package:flutter/material.dart';
import 'package:shop/components/shop_now_button.dart';
import 'package:shop/pages/home_page.dart';

class CoverPage extends StatelessWidget {
  const CoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 250.0,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/main logo.png', height: 250.0, color: Colors.limeAccent),
              ],
            ),
          ),
          const SizedBox(height: 250.0,),
          ShopNowButton(onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {return HomePage();}));
          }),
        ],
      ),
    );
  }
}