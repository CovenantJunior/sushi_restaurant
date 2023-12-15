import 'package:flutter/material.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCart extends StatefulWidget {
  

  @override
  State<AddToCart> createState() => _AddToCartState();
  final String price;
  const AddToCart({
    super.key,
    required this.price
  });
}

class _AddToCartState extends State<AddToCart> {
  int amount = 0;

  void increment() {
    amount++;
    setState(() {
      amount = amount;
    });
  }

  void decrement() {
    amount--;
    if (amount < 0) {
      amount = 0;
    }
    setState(() {
      amount = amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: primaryColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.price,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16
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

                 const SizedBox(width: 10),

                 Text(
                  "$amount",
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
                    onPressed: decrement,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.white,
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}