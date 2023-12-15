import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/components/food_tile.dart';
import 'package:sushi_restaurant/layouts/food_details.dart';
import 'package:sushi_restaurant/models/menu_list.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  
  List<MenuList> menus = [
  MenuList(
    name: 'More Sushis',
    price: '\$12.99',
    imagePath: 'images/more_sushis.png',
    rating: "4.0",
    desc: "Experience an assortment of delectable sushi variations with our More Sushis platter. Delight in a fusion of flavors and textures meticulously crafted to satisfy your cravings. Each piece showcases the perfect balance of fresh ingredients, offering a burst of savory and umami goodness in every bite. Elevate your dining experience with this diverse and tantalizing sushi selection."
  ),
  MenuList(
    name: 'Salmon Eggs',
    price: '\$9.99',
    imagePath: 'images/salmon_eggs.png',
    rating: "5.0",
    desc: "Indulge in the ocean's finest treasure with our Salmon Eggs Delight, featuring premium-grade ikura harvested from the freshest salmon. These glistening, vibrant orbs offer a burst of oceanic flavors and a delightful texture that tantalizes the palate. Savor the exquisite brininess and subtle sweetness of our hand-picked salmon roe, encapsulated within delicate clusters. Each pop reveals a luscious, velvety texture and a satisfying burst of umami, elevating your culinary experience."
  ),
  MenuList(
    name: 'Sushi',
    price: '\$10.50',
    imagePath: 'images/sushi.png',
    rating: "4.5",
    desc: "Dive into a world of traditional Japanese flavors with our exquisite Sushi assortment. Crafted with precision and finesse, each piece embodies authenticity and culinary excellence. Revel in the harmonious blend of vinegared rice, fresh seafood, and delicate seaweed. Our Sushi promises a symphony of tastes and textures that will transport you to the heart of Japan’s culinary culture."
  ),
  MenuList(
    name: 'Tuna',
    price: '\$11.75',
    imagePath: 'images/tuna.png',
    rating: "4.2",
    desc: "Satisfy your cravings with our premium Tuna selections, meticulously curated to offer the finest dining experience. Immerse yourself in the rich flavors and buttery texture of fresh, succulent tuna. Each bite delivers a burst of oceanic goodness, perfectly complemented by its tender texture. Indulge in the essence of the sea with our handpicked Tuna varieties."
  ),
  // Add more MenuList objects as needed
];


  void navigateToFoodDetail(int index) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetails(
      food: menus[index],
    )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 50,
        leading: const Icon(
          Icons.menu,
          color: Color.fromARGB(255, 138, 60, 55),
        ),
        title: const Text(
          'Tokyo',
          style: TextStyle(
            fontFamily: 'DM Serif Display',
            fontSize: 30.0,
            color: Color.fromARGB(255, 138, 60, 55),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(20.0,20.0,0,0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Buy at 30% Off",
                              style: TextStyle(
                                fontFamily: 'DM Serif Display',
                                fontSize: 25.0,
                                color: Colors.white
                              )
                            ),
                          ),
                                
                          SizedBox(height: 10),
                      
                          Center(
                            child: Button(
                              text: "Get Offer",
                              onTap: null,
                            ),
                          )
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0,0,40.0,0),
                      child: Image.asset(
                        'images/more_sushis.png',
                        height: 100,
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 10.0,),

               TextField(
                 decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    fontFamily: "DM Serif Display"
                  ),
                  hintText: "Search",
                   border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor
                    ),
                     borderRadius: BorderRadius.circular(15)
                   ),
                   enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: primaryColor
                      ),
                      borderRadius: BorderRadius.circular(15)
                   ),
                   focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.green
                      ),
                      borderRadius: BorderRadius.circular(15)
                   )
                 ),
               ),

               const SizedBox(height: 10.0),

              Row(
                children: [
                  Text(
                    "Menu List",
                    style: TextStyle(
                      fontFamily: 'DM Serif Display',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: primaryColor
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10.0),

              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menus.length,
                  itemBuilder: (context, index) => FoodTile(
                    food: menus[index],
                    onTap: () => navigateToFoodDetail(index)
                  ),
                )
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  Text(
                    "Favorite",
                    style: TextStyle(
                      fontFamily: 'DM Serif Display',
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: primaryColor
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/salmon_eggs.png',
                          height: 60,
                        ),
                        
                        const SizedBox(width: 20),
                        
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Salmon Eggs",
                              style: TextStyle(
                                fontFamily: 'DM Serif Display',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                        
                            Text(
                              "\$25",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}