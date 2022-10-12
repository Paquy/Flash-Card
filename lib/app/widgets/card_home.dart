import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 25,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.yellow,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            wordSpacing: 1,
          ),
        ),
      ),
    );
  }
}
