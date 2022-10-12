import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

import 'card_home.dart';

class CardFlipHome extends StatelessWidget {
  const CardFlipHome({super.key, required this.jokes, required this.answer});

  final String jokes;
  final String answer;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: FlipCard(
        flipOnTouch: true,
        front: CardHome(text: jokes), //
        back: CardHome(text: answer),
      ),
    );
  }
}
