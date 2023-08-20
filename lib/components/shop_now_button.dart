import 'package:flutter/material.dart';

class ShopNowButton extends StatelessWidget {
  final Function()? onTap;

  const ShopNowButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.limeAccent,
          borderRadius: BorderRadius.circular(60),
        ),
        child: const Center(
          child: Text(
            "Shop Now",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}