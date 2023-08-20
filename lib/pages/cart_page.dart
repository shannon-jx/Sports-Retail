import 'package:flutter/material.dart';
import 'package:shop/components/custom_nav_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      bottomNavigationBar: CustomNavBar(selectedIndex: 2,),
    );
  }
}