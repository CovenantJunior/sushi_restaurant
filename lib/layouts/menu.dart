import 'package:flutter/material.dart';

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
          'Menus',
          style: TextStyle(
              fontFamily: 'DM Serif Display',
              fontSize: 40.0,
              color: Colors.white
            ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        ),
    );
  }
}