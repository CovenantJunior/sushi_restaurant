import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/models/menu_list.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCartButton extends StatefulWidget {

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
  final MenuList food;
  final int quantity;
  
  const AddToCartButton({
    super.key,
    required this.food,
    required this.quantity
  });
}

class _AddToCartButtonState extends State<AddToCartButton> {
  void add(BuildContext context) {
    if (widget.quantity > 0) {
      final shop = context.read<ShopList>();
      shop.addToCart(widget.food, widget.quantity);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            "Item added successfully",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Close dialog
                Navigator.pop(context);

                // Return to Menu Lists
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white
              ),
            ),
          ],
        ) 
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.red,
          content: const Text(
            "Please choose desired quantity",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Close dialog
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white
              ),
            ),
          ],
        ) 
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      child: GestureDetector(
        onTap: () => add(context),
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