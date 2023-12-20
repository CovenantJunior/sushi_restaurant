// ShopList prototype
import 'package:flutter/material.dart';
import 'package:sushi_restaurant/models/menu_list.dart';

class ShopList extends ChangeNotifier {

  // Menu List
  List<MenuList> menus = [
    MenuList(
      name: 'More Sushis',
      price: '\$12.99',
      imagePath: 'images/more_sushis.png',
      rating: "4.0",
      desc: "Experience an assortment of delectable sushi variations with our More Sushis platter. Delight in a fusion of flavors and textures meticulously crafted to satisfy your cravings. Each piece showcases the perfect balance of fresh ingredients, offering a burst of savory and umami goodness in every bite. Elevate your dining experience with this diverse and tantalizing sushi selection.",
      quantity: 0
    ),
    MenuList(
      name: 'Salmon Eggs',
      price: '\$9.99',
      imagePath: 'images/salmon_eggs.png',
      rating: "5.0",
      desc: "Indulge in the ocean's finest treasure with our Salmon Eggs Delight, featuring premium-grade ikura harvested from the freshest salmon. These glistening, vibrant orbs offer a burst of oceanic flavors and a delightful texture that tantalizes the palate. Savor the exquisite brininess and subtle sweetness of our hand-picked salmon roe, encapsulated within delicate clusters. Each pop reveals a luscious, velvety texture and a satisfying burst of umami, elevating your culinary experience.",
      quantity: 0
    ),
    MenuList(
      name: 'Sushi',
      price: '\$10.50',
      imagePath: 'images/sushi.png',
      rating: "4.5",
      desc: "Dive into a world of traditional Japanese flavors with our exquisite Sushi assortment. Crafted with precision and finesse, each piece embodies authenticity and culinary excellence. Revel in the harmonious blend of vinegared rice, fresh seafood, and delicate seaweed. Our Sushi promises a symphony of tastes and textures that will transport you to the heart of Japan’s culinary culture.",
      quantity: 0
    ),
    MenuList(
      name: 'Tuna',
      price: '\$11.75',
      imagePath: 'images/tuna.png',
      rating: "4.2",
      desc: "Satisfy your cravings with our premium Tuna selections, meticulously curated to offer the finest dining experience. Immerse yourself in the rich flavors and buttery texture of fresh, succulent tuna. Each bite delivers a burst of oceanic goodness, perfectly complemented by its tender texture. Indulge in the essence of the sea with our handpicked Tuna varieties.",
      quantity: 0
    ),
  ];

  // Customer Cart
  List<MenuList> cart = [
    
  ];

  // Getter method
  // List<MenuList> get menus => _menus;
  // List<MenuList> get cart => _cart;

  // Add to cart
  void addToCart(MenuList food, int quantity) {
    cart.add(food);
    food.quantity = quantity;
    notifyListeners();
  }
  
  removeFromCart(MenuList food) {
    cart.remove(food);
    notifyListeners();
  }
}