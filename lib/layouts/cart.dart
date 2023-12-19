import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/models/menu_list.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ShopList>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Cart",
            style: TextStyle(
            fontFamily: 'DM Serif Display',
            fontSize: 25.0,            
          ),
          ),
          centerTitle: true,
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            final MenuList menu = value.menus[index];

            String name = menu.name;
            String price = menu.price;
            String imagePath = menu.imagePath;
            String rating = menu.rating;
            String desc = menu.desc;
          
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: primaryColor,
                          fontFamily: "DM Serif Display",
                          fontSize: 20
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      
                      Text(
                        price,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}