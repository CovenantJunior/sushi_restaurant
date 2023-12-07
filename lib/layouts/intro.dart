import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20.0),

            Text(
              "Sushi Man",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 25.0,
                color: Colors.white
              )
            ),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/salmon_eggs.png'),
            ),

            const SizedBox(height: 20.0),

             Text(
              "The flavors of Japanese cuisine.",
              style: GoogleFonts.dmSerifDisplay( 
                fontSize: 25.0,
                color: Colors.white
              )
            ),

            const SizedBox(height: 10.0),

             const Text(
              "Experience the tasty essence of popular Japanese cuisine that's available worldwide, making every bite a flavorful journey without limits.",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.grey
              )
            ),
          ],
        ),
      ),
    );
  }
}