import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/components/food_tile.dart';
import 'package:sushi_restaurant/layouts/food_details.dart';
import 'package:sushi_restaurant/models/shop.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  
  void navigateToFoodDetail(int index) {
    final shop = context.read<ShopList>();
    final menus = shop.menus;

    Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetails(
      food: menus[index],
      index: index
    )));
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<ShopList>();
    final menus = shop.menus;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        foregroundColor: primaryColor,
        toolbarHeight: 50,
        leading: const Icon(
          Icons.menu,          
        ),
        title: const Text(
          'Tokyo',
          style: TextStyle(
            fontFamily: 'DM Serif Display',
            fontSize: 30.0,            
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            icon: const Icon(
              Icons.shopping_cart,              
            ),
          )
        ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "Buy at 30% Off",
                            style: TextStyle(
                              fontFamily: 'DM Serif Display',
                              fontSize: 24.0,
                              color: Colors.white
                            )
                          ),
                        ),
                    
                        Center(
                          child: Button(
                            text: "Get Offer",
                            onTap: null,
                          ),
                        )
                      ],
                    ),

                    Image.asset(
                      'images/more_sushis.png',
                      height: 100,
                    )
                  ],
                ),
              ),

              ),

              const SizedBox(height: 10.0,),

               Expanded(
                flex: 2,
                 child: TextField(
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
               ),

              const SizedBox(height: 10.0),

              Expanded(
                flex: 1,
                child: Row(
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
            ),
              
              const SizedBox(height: 10.0),

              Expanded(
                flex: 7,
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

              Expanded(
                child: Row(
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
              ),

              const SizedBox(height: 10),

              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/salmon_eggs.png',
                            height: 60,
                          ),
                          
                          const SizedBox(width: 20),
                          
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                ),
              )
            ],
          ),
        ),
    );
  }
}