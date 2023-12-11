import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/button.dart';
import 'package:sushi_restaurant/themes/colors.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
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
          padding: const EdgeInsets.all(20.0),
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

              const SizedBox(height: 20.0,),

               TextField(
                 decoration: InputDecoration(
                   border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: primaryColor
                    ),
                     borderRadius: BorderRadius.circular(15)
                   )
                 ),
               ),

               const SizedBox(height: 20.0),

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
              )
            ],
          ),
        ),
    );
  }
}