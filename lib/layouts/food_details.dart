import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/add_to_cart.dart';
import 'package:sushi_restaurant/models/menu_list.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class FoodDetails extends StatelessWidget {
  
  final int index;
  final MenuList food;
  const FoodDetails({
    super.key,
    required this.food,
    required this.index
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (
        AppBar(
          foregroundColor: primaryColor,
          title: Text(
            food.name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "DM Serif Display"
            ),
          ),
          centerTitle: true,
        )
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      food.imagePath,
                      height: 200,
                    ),
                
                    const SizedBox(height: 20),
                
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                        ),
                
                        const SizedBox(width: 5),
                        
                        Text(
                          food.rating,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 25),
                
                    Text(
                      food.name,
                      style: TextStyle(
                        fontFamily: 'DM Serif Display',
                        color: primaryColor,
                        fontSize: 30
                      ),
                    ),
                
                    const SizedBox(height: 20),
                
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                
                    const SizedBox(height: 20),
                
                    Text(
                      food.desc,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              )
            ),
          ],
        ),
      ),
      bottomNavigationBar: AddToCart(
        price: food.price,
        food: food
      ),
    );
  }
}