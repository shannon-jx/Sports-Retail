import 'package:flutter/material.dart';
import 'package:shop/components/product.dart';

// ignore: must_be_immutable
class Tile extends StatelessWidget {
  Product prod;
  Tile({super.key, required this.prod});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        child: Container(
          width: 280,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                prod.image,
              ),
              ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          prod.name,
                          style: const TextStyle(
                            fontSize: 25.0,
                            backgroundColor: Colors.transparent,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          prod.desc,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      prod.price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      height: 75.0,
                      width: 75.0,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        ),
                        color: Colors.yellow,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          size: 30.0,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}