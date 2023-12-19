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
        backgroundColor: primaryColor,
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
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            final MenuList menu = value.cart[index];

            String name = menu.name;
            String price = menu.price;
            String imagePath = menu.imagePath;
            String rating = menu.rating;
            String desc = menu.desc;
          
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: secondaryColor,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "DM Serif Display",
                              fontSize: 20
                            ),
                          ),
                          
                          const SizedBox(height: 10),
                          
                          Text(
                            price,
                            style: const TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),

                      IconButton(
                        onPressed: () {
                          value.removeFromCart(value.cart[index]);
                        },
                        icon: const Icon(
                          Icons.delete_sweep,
                          color: Colors.white
                        )
                      )
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