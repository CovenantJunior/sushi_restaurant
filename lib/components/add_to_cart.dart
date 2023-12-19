import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/add_to_cart_button.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCart extends StatefulWidget {
  

  @override
  State<AddToCart> createState() => _AddToCartState();
  
  final int index;
  final String price;
  
  const AddToCart({
    super.key,
    required this.price,
    required this.index
  });
}

class _AddToCartState extends State<AddToCart> {
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 0) {
      return setState(() {
        quantity--;
      });
    }
    setState(() {
        quantity = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        height: 130,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 11),
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
                ),

                const SizedBox(width: 10),

                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: IconButton(
                        onPressed: decrement,
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        )
                      ),
                    ),
                    
                    const SizedBox(width: 10),
                    
                     Text(
                      "$quantity",
                      style: const TextStyle(
                        color: Colors.white
                      ),
                     ),
                    
                    const SizedBox(width: 10),
                    
                     Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(50)
                      ),
                       child: IconButton(
                        onPressed: increment,
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )
                      ),
                     ),
                  ],
                ),
              ],
            ),

            AddToCartButton(
              index: widget.index,
              quantity: quantity,
            )
          ],
        ),
      ),
    );
  }
}