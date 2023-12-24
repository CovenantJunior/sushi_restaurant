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
            int quantity = menu.quantity;

            void delete(BuildContext context, menu) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: primaryColor,
                  content: const Text(
                    "Delete Item?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'DM Serif Display',
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        value.removeFromCart(menu);
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.done,
                        color: Colors.white
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel_outlined,
                        color: Colors.white
                      ),
                    ),
                  ],
                ) 
              );
            }
          
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Dismissible(
                key: Key(name),
                onDismissed: (direction) async {
                  delete(context, menu);
                },
                child: Card(
                  color: secondaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              imagePath,
                              height: 50,
                            ),
                
                            const SizedBox(width: 20),
                
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "$name x $quantity",
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
                          ],
                        ),
                
                
                        IconButton(
                          onPressed: () {
                            delete(context, menu);
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
              ),
            );
          }
        ),
      )
    );
  }
}