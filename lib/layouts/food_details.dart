import 'package:flutter/material.dart';
import 'package:sushi_restaurant/models/menu_list.dart';

class FoodDetails extends StatelessWidget {
  
  final MenuList food;
  const FoodDetails({
    super.key,
    required this.food
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(food.name),
    );
  }
}