import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCartButton extends StatelessWidget {
  
  final int index;
  final int quantity;
  
  void addToCart() {
    if (quantity > 0) {
      final shop = context.read<ShopList>();
      final menu = shop.menus;
      shop.addToCart(menu[index], quantity);
    }
  }

  const AddToCartButton({
    super.key,
    required this.index,
    required this.quantity
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      child: GestureDetector(
        onTap: addToCart,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(50)
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Add to Cart",
                style: TextStyle(
                  color: Colors.white
                ),
              ),

              SizedBox(width: 10),

              Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}