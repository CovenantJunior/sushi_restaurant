import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(212, 135, 81, 77),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white
            ),
          ),

          const SizedBox(width: 10.0),

          const Icon(
            Icons.arrow_forward_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}