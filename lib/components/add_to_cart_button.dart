import 'package:flutter/material.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class AddToCartButton extends StatelessWidget {
  
  final int index;
  final void Function()? onTap;
  const AddToCartButton({
    super.key,
    required this.index,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      child: GestureDetector(
        onTap: onTap,
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