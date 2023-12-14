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
      margin: const EdgeInsets.only(right: 20.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            width: 160.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  food.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
            
                const SizedBox(height: 20.0),
            
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[700],
                    ),
                    Text(
                      food.rating,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}