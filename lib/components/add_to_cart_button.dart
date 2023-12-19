import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCartButton extends StatefulWidget {

  @override
  State<AddToCartButton> createState() => _AddToCartButtonState();
  final int index;
  final int quantity;
  
  const AddToCartButton({
    super.key,
    required this.index,
    required this.quantity
  });
}

class _AddToCartButtonState extends State<AddToCartButton> {
  void add(BuildContext context) {
    if (widget.quantity > 0) {
      final shop = context.read<ShopList>();
      final menu = shop.menus;
      shop.addToCart(menu[widget.index], widget.quantity);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text(
            "Item added successfully",
            textAlign: TextAlign.center,
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
                Icons.done
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