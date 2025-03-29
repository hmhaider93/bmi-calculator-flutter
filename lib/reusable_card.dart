import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, required this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          // color: Color(0xFF1D1B33),
          color: colour,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: cardChild,
    );
  }
}