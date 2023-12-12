import 'package:flutter/material.dart';
import 'package:sushi_restaurant/models/menu_list.dart';
// import 'package:sushi_restaurant/themes/colors.dart';

class FoodTile extends StatelessWidget {
  
  final MenuList food;
  const FoodTile({
    super.key,
    required this.food
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Image.asset(
            food.imagePath,
            height: 150,
          ),

          Text(
            food.name,
            style: const TextStyle(
              fontFamily: 'DM Serif Display',
              fontSize: 20
            ),
          ),

          SizedBox(
            height: 160.0,
            child: Row(
              children: [
                Text(food.price),

                const SizedBox(height: 20.0),

                const Icon(Icons.star),
                Text(food.rating)
              ],
            ),
          ),


        ],
      ),
    );
  }
}