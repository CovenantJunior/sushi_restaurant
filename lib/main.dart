import 'package:flutter/material.dart';
import 'package:sushi_restaurant/layouts/intro.dart';
import 'package:sushi_restaurant/layouts/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Intro(),
      routes: {
        '/intro' : (context) => const Intro(),
        '/menu' : (context) => const Menu()
      },
    );
  }
}
