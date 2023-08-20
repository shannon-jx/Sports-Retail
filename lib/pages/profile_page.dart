import 'package:flutter/material.dart';
import 'package:shop/components/custom_nav_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      bottomNavigationBar: CustomNavBar(selectedIndex: 3,),
    );
  }
}