import 'package:flutter/material.dart';
import 'package:sushi_restaurant/components/button.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(height: 20.0),
          
              const Text(
                "Sushi Restaurant",
                style: TextStyle(
                  fontFamily: 'DM Serif Display',
                  fontSize: 40.0,
                  color: Colors.white
                )
              ),
          
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('assets/images/salmon_eggs.png'),
              ),
          
              const SizedBox(height: 30.0),
          
               const Text(
                "THE FLAVORS OF JAPANESE CUISINE.",
                style: TextStyle(
                  fontFamily: 'DM Serif Display',
                  fontSize: 30.0,
                  color: Colors.white
                )
              ),
          
              const SizedBox(height: 10.0),
          
               Text(
                "Experience the tasty essence of popular Japanese cuisine that's available worldwide, making every bite a flavorful journey without limits.",
                style: TextStyle(
                  color: Colors.grey[200]
                )
              ),
          
          
              const SizedBox(height: 40.0),
          
              Button(
                text: "Get Started",
                onTap: () {
                  Navigator.pushNamed(context, '/menu');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}